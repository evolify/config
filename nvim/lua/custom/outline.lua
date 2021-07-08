local Util = require "util"
local nmap = Util.nmap

vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = true,
    position = 'right',
    keymaps = {
        close = "<Esc>",
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "gh",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
}

nmap("gs", ":SymbolsOutline<CR>")
