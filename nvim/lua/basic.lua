local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd

cmd("syntax on")
cmd("filetype plugin indent on")

-- enable quickapp syntax highlight
cmd([[
  au BufRead,BufNewFile *.ux set ft=vue
]])

-- auto toggle tmux statusline
-- cmd("autocmd VimEnter,VimLeave * silent !tmux set status")

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.ttimeoutlen = 10
o.number = true
o.relativenumber = true
o.cursorline = true
o.backspace = '2'
o.wildmode = "list:longest"
o.hidden = true
o.clipboard = "unnamedplus"

cmd([[
  au TextYankPost * silent! lua vim.highlight.on_yank({timeout = 300})
]])

require "custom.neovide"
