local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

return {
  "neovim/nvim-lspconfig",
  config= function()
    local lspconfig = require'lspconfig'
    lspconfig.clangd.setup{
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
        return lspc_util.root_pattern('.git')(filename)
      end
    }
    lspconfig.ols.setup{
      cmd = {
        'ols'
      },
      filetypes = {'odin'},
      on_attach = on_attach,
      root_dir = function(filename)
        local lspc_util = require('lspconfig.util')
        return lspc_util.root_pattern('.git')(filename)
      end
    }
  end
}
