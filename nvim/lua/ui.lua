local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local Util = require("util")
local hl = Util.highlight

cmd("colorscheme starry")
cmd("hi Normal guibg=NONE ctermbg=NONE")
cmd("hi VertSplit guibg=NON")

o.guifont = "FiraCode:16"

o.termguicolors = true

o.background = "dark"

o.fillchars = "vert:│"
o.fcs = "eob: "

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
