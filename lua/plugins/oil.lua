-- oil.nvim
-- https://github.com/stevearc/oil.nvim

return {
  { -- Replace netrw to navigate/add/rm files
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = {
      { 'echasnovski/mini.icons', lazy = true, enabled = vim.g.have_nerd_font },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
