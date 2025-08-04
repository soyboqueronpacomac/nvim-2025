return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({
      paths = {
        vim.fn.stdpath("data") .. "/lazy/friendly-snippets",
        vim.fn.stdpath("config") .. "/snippets", -- Aquí está tu archivo php.json
      },
    })
  end,
}
