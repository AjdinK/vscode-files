return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          settings = {
            dart = {
              enableSdkFormatter = true, -- Automatically format code with the Dart SDK
            },
          },
        },
      },
    },
  },
}
