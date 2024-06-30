-- Secure neovim - don't load local config files
vim.o.exrc = false

-- All tabs shall be 2 ... and don't fucking expand them!
-- Well, this only works on buffers that filetype plugin does not load it's own
-- defaults.
vim.o.ts = 2
vim.o.sw = 2
vim.o.sts = 2
vim.o.et = true

-- Default text width and color column
vim.o.tw = 80
vim.o.cc = "+1"

-- Line number
vim.o.nu = true

-- Turn off this stupid word wrap thingie
vim.o.wrap = false

-- Disable mouse, because that's bullshit in tui
vim.o.mouse = ""
