return {
  {
    "TimUntersberger/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("neogit").setup({
        integrations = {
          diffview = true,
        },
      })
    end,
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit: open UI" },
    },
  },
}
