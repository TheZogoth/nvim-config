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
    require('telescope.builtin').grep_string()
  end,
  {noremap = true, silent = true, desc = "Telescope find files by contents" })
