return {
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- PHPStan for diagnostics
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
          -- Prettier for non-PHP files
          nls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "typescript",
              "css",
              "scss",
              "html",
              "json",
              "yaml",
              "markdown",
              "vue",
            },
            extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
          }),
          -- PHP CS Fixer (or another formatter) for PHP files
          nls.builtins.formatting.phpcsfixer.with({
            extra_args = { "--rules=@PSR12" }, -- Customize PHP CS Fixer rules
          }),
        },
      }
    end,
  },
  {
    -- Optional: Increase timeout for slow formatting
    -- "neovim/nvim-lspconfig",
    -- opts = {
    --   format = { timeout_ms = 2000 },
    -- },
  },
}