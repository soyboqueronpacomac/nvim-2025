return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        enabled = true,
      },
      -- phpactor = { enabled = true },
      intelephense = { enabled = true },
      html = { enabled = true },
      cssls = { enabled = true },
      emmet_ls = { enabled = true },
      tsserver = { enabled = true },
    },
  },
}
