return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary", -- 최신 기능을 쓰고 싶으면 canary 브랜치 권장
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- Copilot 연동
      { "nvim-lua/plenary.nvim" }, -- 필수 의존성
    },
    opts = {
      debug = false, -- 디버그 모드 비활성화
      model = "claude-sonnet-4",
      window = {
        layout = "float", -- 플로팅 윈도우로 열기
        width = 0.4,
        height = 0.5,
        border = "rounded",
      },
      mappings = {
        close = { "<Esc>", "<C-c>" },
        accept_diff = "<C-y>", -- Copilot에서 제안한 diff 반영
        reset = "<C-r>", -- 세션 초기화
      },
    },
    config = function(_, opts)
      require("CopilotChat").setup(opts)

      -- 단축키 설정 예시
      local map = vim.keymap.set
      local chat = require("CopilotChat")
      local select = require("CopilotChat.select")

      map("n", "<leader>ccq", function()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, {
            selection = select.buffer,
          })
        end
      end, { desc = "CopilotChat - Quick chat" })

      map("v", "<leader>ccq", function()
        local input = vim.fn.input("Quick Chat: ")
        if input ~= "" then
          require("CopilotChat").ask(input, {
            selection = select.visual,
          })
        end
      end, { desc = "CopilotChat - Quick chat" })

      -- Copilot Chat 창 열기
      map("n", "<leader>cch", function()
        chat.toggle()
      end, { desc = "Copilot Chat: 대화창 열기/닫기" })
    end,
    event = "VeryLazy",
  },
}
