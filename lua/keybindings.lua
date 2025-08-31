-- Bind '=' to EOL in nvo
vim.keymap.set(
  '',
  '=',
  '$',
  {noremap = true, silent = true, desc = "Jump to EOL"})

-- Bind 'gtf' to change directory (local window) to where the file is located
vim.keymap.set(
  'n',
  'gtf',
  ':lcd %:h<CR>',
  {noremap = true, silent = true, desc = "Go to current file"})

-- Telescope
vim.keymap.set(
  'n',
  'ff',
  function()
    require('telescope.builtin').find_files()
  end,
  {noremap = true, silent = true, desc = "Telescope find files" })
vim.keymap.set(
  'n',
  'fg',
  function()
    require('telescope.builtin').live_grep()
  end,
  {noremap = true, silent = true, desc = "Telescope find files by contents" })

-- Code completion and things
vim.keymap.set(
  'n',
  '<A-r>',
  vim.lsp.buf.rename,
  { noremap = true, silent = true, desc = "Rename symbol" })
vim.keymap.set(
  'n',
  'H',
  vim.lsp.buf.hover,
  { noremap = true, silent = true, desc = "Symbol information" })

vim.keymap.set(
  'n',
  'gdec',
  vim.lsp.buf.declaration,
  { noremap = true, silent = true, desc = "Go to declaration" })
vim.keymap.set(
  'n',
  'gdef',
  vim.lsp.buf.definition,
  { noremap = true, silent = true, desc = "Go to definition" })
vim.keymap.set(
  'n',
  'gimpl',
  vim.lsp.buf.implementation,
  { noremap = true, silent = true, desc = "Go to implementation" })

-- Diagnostics
vim.keymap.set(
  'n',
  '<C-a>e',
  vim.diagnostic.open_float,
  { noremap = true, silent = true, desc = "Show detailed diagnostics" })
vim.keymap.set(
  'n',
  'ge',
  function()
    vim.diagnostic.goto_next({
      severity = vim.diagnostic.severity.ERROR,
      float = false})
  end,
  { noremap = true, silent = true, desc = "Go to next error" })
vim.keymap.set(
  'n',
  'gw',
  function()
    vim.diagnostic.goto_next({
      severity = vim.diagnostic.severity.WARN,
      float = false})
  end,
  { noremap = true, silent = true, desc = "Go to next warning" })
vim.keymap.set(
  'n',
  'gn',
  function()
    vim.diagnostic.goto_next({float = false})
  end,
  { noremap = true, silent = true, desc = "Go to next warning or error" })
