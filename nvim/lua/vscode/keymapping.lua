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

g.mapleader = " "



-- easymotion
-- g.EasyMotion_do_mapping = 0 -- Disable default mappings
-- `s{char}{char}{label}`
-- Need one more keystroke, but on average, it may be more comfortable.
-- vim.cmd("nmap s <Plug>(easymotion-s2)")
nmap("s", "<Plug>(easymotion-s2)")
nmap("/", "<Plug>(easymotion-sn)")
omap("/", "<Plug>(easymotion-tn)")

-- Turn on case-insensitive feature
g.EasyMotion_smartcase = 1

-- Move to word
map("<leader>w", "<Plug>(easymotion-bd-w)")

-- JK motions: Line motions
map("<leader>j", "<Plug>(easymotion-j)")
map("<leader>k", "<Plug>(easymotion-k)")

nmap("<esc>", ":noh<cr>")


-- fold
-- nmap("fo", ":foldopen<CR>")
-- nmap("fc", ":foldclose<CR>")
nmap("zz", "za")

-- eft
nmap(";", "<Plug>(eft-repeat)")
xmap(";", "<Plug>(eft-repeat)")
nmap("f", "<Plug>(eft-f)")
xmap("f", "<Plug>(eft-f)")
omap("f", "<plug>(eft-f)")
nmap("F", "<Plug>(eft-F)")
xmap("F", "<Plug>(eft-F)")
omap("F", "<Plug>(eft-F)")
nmap("t", "<Plug>(eft-t)")
xmap("t", "<Plug>(eft-t)")
omap("t", "<Plug>(eft-t)")
nmap("T", "<Plug>(eft-T)")
xmap("T", "<Plug>(eft-T)")
omap("T", "<Plug>(eft-T)")

