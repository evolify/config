local bg = "#000000"
-- local selected_fg = "#fe8019"
local selected_fg = "#ffffff"
local fg = "#aaaaaa"
require('bufferline').setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    indicator_icon = '▌',
    indicator_icon = '',
    separator_style = {"▏", ""},
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    offsets = {{filetype = "NvimTree", text = "▌ NVIM TREE", text_align = "left"}},
    diagnostics = "nvim_lsp",
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    separator_style = "thin",
    mappings = "true",
    --[[ diagnostics_indicator = function(count, level, diagnostics_dict)
      return "("..count..")"
    end ]]
  },
  highlights = {
    fill = {
      guibg = bg,
    },
    background = {
      guifg = fg,
      guibg = bg,
    },
    buffer_selected = {
      guifg = selected_fg,
      guibg = bg,
      gui = "bold,italic"
    },
    diagnostic =  {
      guibg = bg,
    },
    separator = {
      guibg = bg,
      guifg = "#000000",
    },
    indicator_selected = {
      guifg = selected_fg,
    },
  }
}
