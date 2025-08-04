return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      local logo = [[
██████   █████   ██████  ██████   ██████  ██████  ███████ ██████  
██   ██ ██   ██ ██      ██   ██ ██       ██   ██ ██      ██   ██ 
██████  ███████ ██      ██████  ██   ███ ██████  █████   ██████  
██      ██   ██ ██      ██      ██    ██ ██      ██      ██   ██ 
██      ██   ██  ██████ ██       ██████  ██      ███████ ██   ██ 
                                                                   
         PacoCoder-nvim-2025
      ]]
      logo = string.rep("\n", 2) .. logo .. "\n\n"

      return {
        theme = "doom",
        config = {
          header = vim.split(logo, "\n"),
          footer = { "⚡ Listo para codificar" },
        },
      }
    end,
  },
}
