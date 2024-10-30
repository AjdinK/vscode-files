return {
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- PHPStan diagnostics
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
          -- Prettier for formatting various file types
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
              "php", -- Add PHP if needed, or customize as you like
            },
            -- Optional: specify Prettier arguments
            extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
          }),
        },
      }
    end,
  },
  {
    -- add longer timeout, since formatting blade files gets a little slow
    -- "neovim/nvim-lspconfig",
    -- opts = {
    --   format = { timeout_ms = 2000 },
    -- },
  },
}
