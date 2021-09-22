local Util = require "util"
local map = Util.map
local nmap = Util.nmap
local imap = Util.imap
local smap = Util.smap
local xmap = Util.xmap
local omap = Util.omap
local tmap = Util.tmap
local vmap = Util.vmap
local g = vim.g
local o = vim.o

nmap("ff", ":call VSCodeNotify('filesExplorer.findInFolder')<CR>")
nmap("fb", ":call VSCodeNotify('workbench.action.quickOpen')<CR>")
nmap("fp", ":call VSCodeNotify('workbench.action.quickOpenRecent')<CR>")
nmap("fo", ":call VSCodeNotify('workbench.action.quickOpenNavigateNextInFilePicker')<CR>")
nmap("zz", ":call VSCodeNotify('workbench.action.toggleZenMode')<CR>")
nmap("gj", ":call VSCodeNotify('twlight.toggleZenMode')<CR>")

nmap(";", ":call VSCodeNotify('whichkey.show')<CR>")

xmap("gc", "<Plug>VSCodeCommentary")
nmap("gc", "<Plug>VSCodeCommentary")
omap("gc", "<Plug>VSCodeCommentary")
nmap("gcc", "<Plug>VSCodeCommentaryLine")

nmap("<tab>", ":call VSCodeNotify('workbench.action.nextEditor')<CR>")
nmap("<S-tab>", ":call VSCodeNotify('workbench.action.previousEditor')<CR>")


