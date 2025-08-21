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
        -- layout = "float", -- 플로팅 윈도우로 열기
        width = 0.4,
        -- height = 0.5,
        -- border = "rounded",
      },
      mappings = {
        close = { "<Esc>", "<C-c>" },
        accept_diff = "<C-y>", -- Copilot에서 제안한 diff 반영
        reset = "<C-r>", -- 세션 초기화
      },
    },
    keys = {
      {
        "<leader>ccq",
        mode = { "v" },
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, {
              selection = require("CopilotChat.select").visual,
            })
          end
        end,
        desc = "CopilotChat Question",
      },
      { "<leader>cca", "<C-y>", mode = { "n", "i" }, desc = "CopilotChat Accept nearest diff" },
      {
        "<leader>cch",
        mode = "n",
        function()
          require("CopilotChat").toggle()
        end,
        desc = "Copilot Chat: 대화창 열기/닫기",
      },
      {
        "<leader>ccr",
        mode = "n",
        function()
          require("CopilotChat").reset()
        end,
        desc = "Copilot Chat: 세션 초기화",
      },
    },
    event = "VeryLazy",
  },
}
