local lspconfig = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
end

-- Elixir
lspconfig.elixirls.setup {
  cmd = { "/usr/local/bin/elixir-ls" },
  capabilities = capabilities,
  on_attach = on_attach
}

-- Python
lspconfig.pyright.setup {
  capabilities = capabilities,
}

-- Lua
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
