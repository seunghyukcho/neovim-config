return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        keymap = {
          accept = false, -- handled by nvim-cmp / blink.cmp
        },
      },
      panel = { enabled = false },
      filetypes = {
        yaml = true,
        markdown = true,
        gitcommit = true,
        gitrebase = true,
        hgcommit = true,
        help = false,
        text = false,
        python = true,
        javascript = true,
        typescript = true,
        ["*"] = true, -- enable for all other filetypes
      },
    },
    config = function(_, opts)
      local copilot = require("copilot")
      copilot.setup(opts)

      vim.keymap.set("i", "<Tab>", function()
        local suggestion = require("copilot.suggestion")
        if suggestion.is_visible() then
          suggestion.accept() -- Copilot 제안이 있으면 바로 수락
        else
          -- Copilot 제안이 없으면 원래 <Tab> 기능 수행
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, { silent = true })
    end,
  },
}
