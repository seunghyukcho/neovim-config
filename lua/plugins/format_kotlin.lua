return {
  -- Kotlin formatting via Conform
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      -- Prefer ktlint, fallback to ktfmt if available
      opts.formatters_by_ft.kotlin = { "ktlint", "ktfmt" }
    end,
  },
  -- Ensure tools are installed via Mason
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      local tools = { "kotlin-language-server", "jdtls", "ktlint", "ktfmt" }
      -- dedupe-safe extend
      local set = {}
      for _, v in ipairs(opts.ensure_installed) do set[v] = true end
      for _, v in ipairs(tools) do if not set[v] then table.insert(opts.ensure_installed, v) end end
    end,
  },
}

