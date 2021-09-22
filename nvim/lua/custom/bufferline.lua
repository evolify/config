--[[ local bg = "#2D3640"
local selected_fg = "#fe8019"
local selected_bg = "bg"
local visible_fg = "#cccccc"
local fg = "#aaaaaa"
 ]]

local selected_fg = "#000000"
local selected_bg = "#FFBC14"
local visible_fg = "#fe8019"
local bg = "#0F1419"
local fg = "#ffffff"

local active = {
  guibg = selected_bg,
  guifg = selected_fg,
  gui = "bold,italic"
}
local in_active = {
  guibg = bg,
  guifg = fg
}
require('bufferline').setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    indicator_icon = '▎',
-- 
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    offsets = { {filetype = "NvimTree", text = "▍ NVIM TREE", text_align = "left"} },
    diagnostics = false,
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    tab_size = 12,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    separator_style = "thin",
    --[[ diagnostics_indicator = function(count, level, diagnostics_dict)
      return "("..count..")"
    end ]]
  },
  highlights = {
    indicator_selected = active,
    fill = in_active,
    background = in_active,
    buffer_selected = active,
    diagnostic = in_active,
    duplicate = in_active,
    duplicate_selected = active,
    pick = {
      guibg = bg
    },
    pick_selected = {
      guibg = selected_bg
    },
    modified_selected = active,
    buffer_visible = {
      guibg = bg,
      guifg = visible_fg
    },
    separator = {
      guifg = bg,
      guibg = bg
    },
  }
}
