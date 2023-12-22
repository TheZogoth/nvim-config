-- Remove space @ eol without losing cursor position when writing to file
vim.api.nvim_create_autocmd(
  "BufWrite",
  {
    command = [[
      let cpos = getcurpos() | %s/\s\+$//e | call setpos('.', cpos) | unl cpos
    ]],
    pattern="*"
  }
)
