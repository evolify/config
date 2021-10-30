local Util = require "util"
local map = Util.map
local g = vim.g
local exec = vim.api.nvim_exec
local vimp = require("vimp")

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require"nvim-tree".setup{
  view = {
    mappings = {
      list = {
        { key = {"<CR>", "o"},                  cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
        { key = "v",                            cb = tree_cb("vsplit") },
        { key = "s",                            cb = tree_cb("split") },
        { key = "t",                            cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>, <S-CR>",                 cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "y",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "c",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "O",                            cb = ':lua vim.fn.system("open "..require"nvim-tree.lib".get_node_at_cursor().absolute_path)<CR>'},
        { key = "F",                            cb = ':lua vim.fn.system("open "..require"nvim-tree.lib".get_node_at_cursor().absolute_path.." -R")<CR>'},
        { key = "S",                            cb = ':lua vim.fn.system("subl "..require"nvim-tree.lib".get_node_at_cursor().absolute_path)<CR>'},
      }
    }
  }
}

-- nvim_tree
local nvim_tree_bindings = {
  { key = {"<CR>", "o"},                  cb = tree_cb("edit") },
  { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
  { key = "v",                            cb = tree_cb("vsplit") },
  { key = "s",                            cb = tree_cb("split") },
  { key = "t",                            cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>, <S-CR>",                 cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "n",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "y",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "c",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "O",                            cb = ':lua vim.fn.system("open "..require"nvim-tree.lib".get_node_at_cursor().absolute_path)<CR>'},
  { key = "F",                            cb = ':lua vim.fn.system("open "..require"nvim-tree.lib".get_node_at_cursor().absolute_path.." -R")<CR>'},
  { key = "S",                            cb = ':lua vim.fn.system("subl "..require"nvim-tree.lib".get_node_at_cursor().absolute_path)<CR>'},

}

g.nvim_tree_root_folder_modifier = ":t"
-- g.nvim_tree_auto_open = 1
g.lua_tree_follow = 1
g.nvim_tree_width_allow_resize = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}
_G.NvimTreeConfig = {}

function NvimTreeConfig.find_toggle()
  local view = require'nvim-tree.view'
  if view.win_open() then
    view.close()
  elseif vim.fn.bufname() ~= "" then
    vim.cmd("NvimTreeFindFile")
  else
    vim.cmd("NvimTreeOpen")
  end
end

map("<C-n>", ":lua NvimTreeConfig.find_toggle()<CR>")
--[[ vimp.bind('', "<C-n>", function()
  local view = require'nvim-tree.view'
  if view.win_open() then
    view.close()
  elseif vim.fn.bufname() then
    vim.cmd("NvimTreeFindFile")
  else
    vim.cmd("NvimTreeOpen")
  end
end) ]]
-- g.nvim_tree_follow = 1

-- remove nvim_tree cursor highlight
--[[ exec(
  [[
    augroup HideCursor
      au!
      au WinLeave,FileType NvimTree set guicursor=n-v-c-sm:block,i-ci-ve:ver2u,r-cr-o:hor20,
      au WinEnter,FileType NvimTree set guicursor=n-c-v:block-Cursor/Cursor-blinkon0,
      au FileType NvimTree hi Cursor blend=100
augroup END  ]]
-- ]], true
-- )
