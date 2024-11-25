-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Only set cursorline on activce window/buffer
vim.api.nvim_create_autocmd({ 'WinEnter', 'BufEnter' }, {
  desc = 'Set cursorline when entering window/buffer',
  group = vim.api.nvim_create_augroup('cursorline-enter', { clear = true }),
  callback = function()
    vim.opt.cursorline = true
  end,
})

-- Remove cursorline when leaving window/buffer
vim.api.nvim_create_autocmd({ 'WinLeave', 'BufLeave' }, {
  desc = 'Remove cursorline when leaving window/buffer',
  group = vim.api.nvim_create_augroup('cursorline-leave', { clear = true }),
  callback = function()
    vim.opt.cursorline = false
  end,
})

-- vim: ts=2 sts=2 sw=2 et
