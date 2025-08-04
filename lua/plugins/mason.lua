return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- PHP
      "intelephense", -- LSP PHP
      "php-cs-fixer", -- Format PHP
      "phpcs", -- Lint PHP

      -- TypeScript / React
      "typescript-language-server", -- LSP TypeScript y TSX
      "eslint-lsp", -- Lint con ESLint
      "prettierd", -- Formateador opcional

      -- Opcionalmente

      "tailwindcss-language-server", -- Soporte LSP
      "stylelint", -- Linter para CSS
    },
  },
}
