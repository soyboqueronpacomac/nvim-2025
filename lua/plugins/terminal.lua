return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    size = 15,
    open_mapping = [[<c-\>]], -- terminal flotante (estilo VSCode)
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = "float", -- esta es la terminal por defecto (Ctrl+\)
    close_on_exit = true,
    shell = vim.o.shell,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Terminal horizontal
    local Terminal = require("toggleterm.terminal").Terminal

    local horiz_term = Terminal:new({
      direction = "horizontal",
      hidden = true,
      count = 1,
    })

    local vert_term = Terminal:new({
      direction = "vertical",
      hidden = true,
      count = 2,
    })

    local dash_term = Terminal:new({
      direction = "float",
      hidden = true,
      count = 3,
      cmd = "htop", -- o cualquier comando útil
    })

    vim.keymap.set("n", "<C-h>", function()
      horiz_term:toggle()
    end, { desc = "Abrir terminal horizontal" })

    vim.keymap.set("n", "<C-v>", function()
      vert_term:toggle()
    end, { desc = "Abrir terminal vertical" })

    vim.keymap.set("n", "<C-t>", function()
      dash_term:toggle()
    end, { desc = "Abrir terminal tipo dashboard (htop)" })
  end,
}
