-- Line numbering
vim.o.number = true
vim.o.relativenumber = true

-- Colors
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd [[colorscheme solarized8_flat]]

-- Search
vim.o.hlsearch = false

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
