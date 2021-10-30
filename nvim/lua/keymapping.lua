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

-- emmet
g.user_emmet_expandabbr_key = '<tab>'
-- imap("<tab>", 'emmet#expandAbbrIntelligent("<tab>")', {expr=true})
vim.cmd("imap <expr> <tab> emmet#expandAbbrIntelligent('<tab>')")
imap("<s-tab>", '<esc>:call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTab()<cr>wwi')

-- auto complete nav
-- imap("<tab>", "v:lua.vsnip_next()", {expr = true})
-- smap("<tab>", "v:lua.vsnip_next()", {expr = true})
--[[ imap("<S-tab>", "v:lua.vsnip_prev()", {expr = true})
smap("<S-tab>", "v:lua.vsnip_prev()", {expr = true})
imap("<C-j>", "v:lua.vsnip_next()", {expr = true})
smap("<C-j>", "v:lua.vsnip_next()", {expr = true})
imap("<C-k>", "v:lua.vsnip_prev()", {expr = true})
smap("<C-k>", "v:lua.vsnip_prev()", {expr = true})
imap("<CR>", "compe#confirm('<CR>')", {expr = true})
 ]]



local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- fzf mru
-- nmap("<leader>f", ":FZF<CR>")
-- map("<C-b>", ":Buffers<CR>")
-- map("<leader>b", ":Buffers<CR>")


-- save
map("<C-s>", "<Esc>:w<CR>")

-- buffers
map("<leader>l", ":BufferLineCycleNext<CR>")
map("<leader>h", ":BufferLineCyclePrev<CR>")
map("<C-]>", ":BufferLineCycleNext<CR>")
nmap("<tab>", ":BufferLineCycleNext<CR>")
nmap("<s-tab>", ":BufferLineCyclePrev<CR>")
nmap("]]", ":BufferLineCycleNext<CR>")
nmap("[[", ":BufferLineCyclePrev<CR>")
nmap("gb", ":BufferLinePick<CR>")

-- GitMessenger
nmap("gm", "<Plug>(git-messenger)")
nmap("gs", ":lua require'gitsigns'.blame_line(true)<CR>")
nmap("gk", ":FocusToggle<CR>")
nmap("<C-M>", ":FocusToggle<CR>")

nmap("<C-W>m", ":WinShift<CR>")

-- easymotion
-- g.EasyMotion_do_mapping = 0 -- Disable default mappings
-- `s{char}{char}{label}`
-- Need one more keystroke, but on average, it may be more comfortable.
-- vim.cmd("nmap s <Plug>(easymotion-s2)")
nmap("s", "<Plug>(easymotion-s2)")
map("/", "<Plug>(easymotion-sn)")
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
-- nmap("zz", "za")

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

-- accelerated_jk
nmap("j", "<Plug>(accelerated_jk_gj)")
nmap("k", "<Plug>(accelerated_jk_gk)")

-- BlockBoard
map("<C-c>", ":BlockBoardToggle<CR>")

