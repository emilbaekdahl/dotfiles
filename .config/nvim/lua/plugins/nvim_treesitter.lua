require('nvim-treesitter.configs').setup({
	highlight = { enable = true },
	ensure_installed = { "json", "lua", "elixir", "python", "yaml" },
})
