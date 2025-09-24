return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            pythonPath = vim.fn.expand("/opt/anaconda3/envs/AI/bin/python"),
          },
        },
      },
    },
  },
}
