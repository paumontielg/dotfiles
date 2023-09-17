local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "python",
    "rust",
    "sql",
    "tsx",
    "typescript",
    "vim",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "bash-language-server",
    "bibtex-tidy",
    "black",
    "clang-format",
    "clangd",
    "cmake-language-server",
    "cmakelint",
    "cpplint",
    "cpptools",
    "css-lsp",
    "deno",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "flake8",
    "gitlint",
    "go-debug-adapter",
    "gofumpt",
    "goimports",
    "html-lsp",
    "latexindent",
    "lua-language-server",
    "luaformatter",
    "markdownlint",
    "prettier",
    "rust-analyzer",
    "sqlfluff",
    "stylua",
    "typescript-language-server",
    "vim-language-server",
    "xmlformatter",
    "yaml-language-server",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.copilot = {
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = "<C-y>",
    }
  },
}

return M
