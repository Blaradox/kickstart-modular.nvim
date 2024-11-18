-- Set <space> as the leader key
--  See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Install `lazy.nvim` plugin manager ]]
require 'config.lazy'

--  NOTE: Options, Keymaps, Autocommands etc. are set in the 'plugin' folder.
--  See `:help 'runtimepath'` and `:scriptnames`

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
