local null_ls = require("null-ls")

local b = null_ls.builtins

local sources = {
	-- linting
	b.diagnostics.flake8.with({ extra_args = { "--max-line-length", "120" } }),
	b.diagnostics.gitlint,
	b.diagnostics.hadolint,
	b.diagnostics.markdownlint,
	b.diagnostics.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),

	-- formatting
	b.formatting.black.with({ extra_args = { "--quiet" } }),
	b.formatting.deno_fmt,
	b.formatting.latexindent,
  b.formatting.rustfmt,
	b.formatting.shfmt,
	b.formatting.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),
	b.formatting.stylua,
	b.formatting.xmlformat,

	-- prettier
	b.formatting.prettier.with({
		filetypes = {
			"css",
			"graphql",
			"html",
			"scss",
			"yaml",
		},
	}),
}

null_ls.setup({
	debug = true,
	sources = sources,
})
