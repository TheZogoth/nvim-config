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
      -- on_attach = function(client, bufnr)
      --   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      -- end,
    })
    vim.lsp.enable('ols')
    vim.lsp.config('ols', {
      cmd = {
        'ols'
      },
      filetypes = {'odin'},
      -- on_attach = function(client, bufnr)
      --   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      -- end,
    })
  end
}
