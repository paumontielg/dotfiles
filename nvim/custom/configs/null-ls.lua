local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  b.diagnostics.cmake_lint,
  b.diagnostics.cpplint,
  b.diagnostics.flake8,
  b.diagnostics.gitlint,
  b.diagnostics.markdownlint,
  b.diagnostics.sqlfluff.with { extra_args = { "--dialect", "postgres" } },
  b.formatting.black.with { extra_args = { "--quiet" } },
  b.formatting.clang_format,
  b.formatting.cmake_format,
  b.formatting.deno_fmt,
  b.formatting.gofumpt,
  b.formatting.goimports,
  b.formatting.latexindent,
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "json",
      "scss",
      "yaml",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
  },
  b.formatting.sqlfluff.with { extra_args = { "--dialect", "postgres" } },
  b.formatting.stylua,
  b.formatting.xmlformat,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
