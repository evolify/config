require("vscode.plugin")
require("vscode.keymapping")
require("vscode.keymapping_vscode")

vim.cmd([[
  au TextYankPost * silent! lua vim.highlight.on_yank({timeout = 300})
]])

vim.o.clipboard = "unnamedplus"
