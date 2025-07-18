return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { buffer = buffer, desc = "Rename File" })
        end)
      end,
    },
    ---@class PluginLspOpts
    opts = {
      servers = { tsserver = {} },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true -- skip default lspconfig setup
        end,
      },
    },
  },
}
