return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable('clangd')
    vim.lsp.config('clangd', {
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
    })

    vim.lsp.enable('ols')
    vim.lsp.config('ols', {
      cmd = {
        'odinls'
      },
      filetypes = {'odin'},
    })

    vim.lsp.enable('ts_ls')
  end
}
