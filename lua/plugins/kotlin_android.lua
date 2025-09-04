return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- Kotlin LSP (fwcd/kotlin-language-server)
        kotlin_language_server = {},
        -- Java LSP (useful for Android Java code)
        jdtls = {},
      },
    },
  },
}

