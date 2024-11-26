-- mini.nvim
-- https://github.com/echasnovski/mini.nvim

return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Automatically add/delete matching parens, quotes, etc.
      require('mini.pairs').setup()

      -- Evaluate/Exchange/Multiply/Replace/Sort text
      --
      --  - g=ib - Evaluate [I]nner [B]rackets and repalce with output.
      --  - gxiw - E[x]change [I]nner [W]ord with next exchange.
      --  - gxx  - E[x]change current line with next exchange.
      --  - gmaw - [M]ultiply [A]round [W]ord, i.e. add 1 copy of word (with spaces).
      --  - 2gmm - [M]ultiply line twice, i.e. add 2 copies of line.
      --  - griw - [R]eplace [I]nner [W]ord with default register.
      --  - gsip - [S]ort [I]nner [P]aragraph lines.
      require('mini.operators').setup()

      -- Simple and easy statusline.
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
