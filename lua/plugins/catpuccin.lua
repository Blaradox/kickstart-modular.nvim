-- catppuccin
-- https://github.com/catppuccin/nvim

return {
  { -- Colorscheme
    'https://github.com/catppuccin/nvim',
    config = function()
      require('catppuccin').setup {
        -- Like many other themes, this one has different styles:
        -- latte, frappe, macchiato, mocha
        flavor = 'auto',
      }
    end,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
