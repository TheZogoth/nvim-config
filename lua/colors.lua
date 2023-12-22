-- Make sure Pmenu and other floating windows have same color scheme as normal,
-- but with dark grey (8) background color.
vim.api.nvim_set_hl(0, 'NormalFloat', {link = 'Normal'})
vim.api.nvim_set_hl(0, 'NormalFloat', {ctermbg=8})
vim.api.nvim_set_hl(0, 'Pmenu', {link = 'NormalFloat'})
