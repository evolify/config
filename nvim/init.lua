-- auto switch im
vim.cmd("autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC")
if vim.g.vscode then
  require "vscode"
else
  require "basic"
  require "plugin"
  require "ui"
  require "keymapping"
end
