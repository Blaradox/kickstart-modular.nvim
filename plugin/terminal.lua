-- [[ Terminal Settings ]]
--  See `:help terminal`

-- Set local settings for terminal buffers
vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', {}),
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.scrolloff = 0

    -- set filetype to 'terminal' to allow adding bindings
    vim.bo.filetype = 'terminal'
  end,
})

-- Easily hit escape twice to exit terminal mode.
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>')
