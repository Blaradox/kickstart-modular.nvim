-- oil.nvim
-- https://github.com/stevearc/oil.nvim

return {
  { -- Replace netrw to navigate/add/rm files
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
    },
    init = function()
      -- Open parent directory in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
      -- Open parent directory in floating window
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float, { desc = 'Open parent directory in float' })
    end,
    -- Optional dependencies
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', lazy = true, enabled = vim.g.have_nerd_font },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
