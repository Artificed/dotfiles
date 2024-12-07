return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      bacon_ls = {
        enabled = false,
      },
      rust_analyzer = {
        enabled = false,
      },
    },
  },
}
