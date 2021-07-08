local api = vim.api
local cmd = api.nvim_command

local Util = {}

-- Key mapping
function Util._map(mode, key, result, opts)
    opts =
        vim.tbl_extend(
        "keep",
        opts or {},
        {
            noremap = true,
            silent = true,
            expr = false
        }
    )

    api.nvim_set_keymap(mode, key, result, opts)
end

function Util.plugmap(mode, key, action, opts)
  opts = vim.tbl_extend('keep', opts or {},
                        {noremap = not vim.startswith(action, "<Plug>")})
  Util._map(mode, key, action, opts)
end

function Util.nmap(key, action, opts)
  Util.plugmap("n", key, action, opts)
end

function Util.vmap(key, action, opts)
  Util.plugmap("v", key, action, opts)
end

function Util.imap(key, action, opts)
  Util.plugmap("i", key, action, opts)
end

function Util.smap(key, action, opts)
  Util.plugmap("s", key, action, opts)
end

function Util.xmap(key, action, opts)
  Util.plugmap("x", key, action, opts)
end

function Util.omap(key, action, opts)
  Util.plugmap("o", key, action, opts)
end

function Util.tmap(key, action, opts)
  Util.plugmap("t", key, action, opts)
end

function Util.map(key, action, opts)
  Util.plugmap("", key, action, opts)
end

-- Stolen from https://github.com/kyazdani42/nvim-palenight.lua/blob/master/lua/palenight.lua#L10
-- Usage:
-- highlight(Cursor, { fg = bg_dark, bg = yellow })
function Util.highlight(group, styles)
  local gui = styles.gui or "NONE"
  local sp = styles.sp or "NONE"
  local fg = styles.fg or "NONE"
  local bg = styles.bg or "NONE"
  local ctermbg = styles.ctermbg or "NONE"
  local ctermfg = styles.ctermfg or "NONE"

  cmd("highlight! " .. group .. " gui=" .. gui .. " guisp=" .. sp .. " guifg=" .. fg .. " guibg=" .. bg .. " ctermbg=" .. ctermbg .. " ctermfg=" .. ctermfg)
end

-- Usage:
-- highlight({
--      CursorLine   = { bg = bg },
--      Cursor       = { fg = bg_dark, bg = yellow }
-- })
function Util.highlights(hi_table)
  for group, styles in pairs(hi_table) do
      U.highlight(group, styles)
  end
end

return Util
