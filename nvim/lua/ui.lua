local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local Util = require("util")
local hl = Util.highlight

cmd("colorscheme ayu")
--[[ cmd("hi Normal guibg=NONE ctermbg=NONE")
cmd("hi VertSplit guibg=NON") ]]

-- o.guifont = "Fira Code Regular:h18, MesloLGS NF Regular:h17"
o.guifont = "JetBrains Mono Regular Nerd Font Complete Mono:h18"

o.termguicolors = true

-- o.background = "dark"

o.fillchars = "vert:▏,eob: "

o.laststatus = 2

g.dashboard_default_executive ='fzf'
g.dashboard_custom_header = {
  '          ▀████▀▄▄              ▄█ ',
  '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
  '    ▄        █          ▀▀▀▀▄  ▄▀  ',
  '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
  '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
  '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
  '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
  '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
  '   █   █  █      ▄▄           ▄▀   ',
}

g.nvim_tree_ignore = { '.git', 'node_modules', '.cache', '.DS_Store' }
