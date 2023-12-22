local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<C-a>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', 'gdec', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gdef', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'H', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gimpl', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<A-r>', vim.lsp.buf.rename, bufopts)
end

return {
  "neovim/nvim-lspconfig",
  config= function()
    require('lspconfig').clangd.setup{
      cmd = {
        'clangd',
        '--all-scopes-completion',
        '--background-index',
        '--completion-style=detailed',
        '--header-insertion=never',
        '--enable-config',
        '-j=6'
      },
      filetypes = {'c', 'cpp', 'cuda'},
      on_attach = on_attach,
      root_dir = function(filename)
        local lspc_util = require('lspconfig.util')
        return lspc_util.root_pattern('.clangd', '.git')(filename)
      end
    }
  end
}
