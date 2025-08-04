return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      intelephense = { enabled = true },
      html = { enabled = true },
      cssls = { enabled = true },
      emmet_ls = { enabled = true },
      tsserver = { enabled = true },
    },
  },
}
