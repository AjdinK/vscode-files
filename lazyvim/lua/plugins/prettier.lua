local plugins = {
  -- Other plugins...
  {
    "MunifTanjim/prettier.nvim",
    dependencies = { "jose-elias-alvarez/null-ls.nvim" },
    config = function()
      require("prettier").setup({
        bin = 'prettierd', -- or use 'prettier' for the Prettier CLI
        filetypes = {
          "javascript", "typescript", "css", "scss", "html", "json", "yaml", "markdown", "vue", "php"
        },
      })
    end,
  },
}

return plugins
