local gl = require('galaxyline')
local gls = gl.section
local condition = require('galaxyline.condition')
local diagnostic = require('galaxyline.provider_diagnostic')

gl.short_line_list = {'NvimTree','vista','dbui','packer', 'startify'}

local colors = {
  -- bg = '#2e3440',
  bg = '#111111',
  fg = '#f8f8f2',
  section_bg = '#3D434F',
  -- section_bg = '#484E5A',
  grey = "#545454",

  blue = '#8be9fd',
  yellow = '#ffc44c',
  orange = '#fe8019',
  red = '#ff5555',
  magenta = '#ff79c6',
  cyan = '#59c2ff',
  green = '#83c746',
}

local mode_color = function()
  local mode_colors = {
    n = colors.cyan,
    i = colors.green,
    c = colors.orange,
    V = colors.magenta,
    [''] = colors.magenta,
    v = colors.magenta,
    R = colors.red,
    s = colors.blue,
  }
  return mode_colors[vim.fn.mode()] or mode_colors['n']
end

local icons = {
    sep = {
        left = "",
        right = ""
    },
    diagnostic = {
        error = " ",
        warn = " ",
        info = " "
    },
    diff = {
        add = " ",
        modified = " ",
        remove = " "
    },
    git = "",
    time = "",
}

local white_space = function() return ' ' end

local list = {
  FirstElement = {
    provider = function() return icons.sep.left end,
    highlight = { colors.cyan, colors.bg }
  },
  Logo = {
    provider = function() return '   ' end,
    highlight = { colors.bg, colors.cyan }
  },
  ViMode = {
    provider = function()
      local alias = {
        n       = 'NORMAL ',
        i       = 'INSERT ',
        c       = 'COMMAND',
        s       = 'SELECT',
        V       = 'VISUAL ',
        ['']  = 'VISUAL ',
        v       = 'VISUAL ',
        R       = 'REPLACE',
        t       = 't'
      }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color()..' gui=bold')
      return '  ' .. (alias[vim.fn.mode()] or vim.fn.mode())
    end,
    highlight = { colors.bg, colors.bg },
    separator = icons.sep.right,
    separator_highlight = {colors.bg, colors.section_bg},
  },
  FileIcon = {
    provider = {white_space, 'FileIcon'},
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.section_bg },
  },
  FileName = {
    provider = 'FileName',
    highlight = { colors.fg, colors.section_bg },
    separator = icons.sep.right,
    separator_highlight = {colors.section_bg, colors.bg}
  },
  LineInfo = {
    provider = 'LineColumn',
    highlight = { colors.fg, colors.section_bg },
    separator = ' ',
    separator_highlight = { colors.cyan, colors.section_bg },
  },

  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = icons.diagnostic.error,
    highlight = {colors.red,colors.bg}
  },
  Space = {
    provider = white_space,
    highlight = {colors.bg,colors.bg},
  },
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = icons.diagnostic.warn,
    highlight = {colors.orange,colors.bg},
  },
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = icons.diagnostic.info,
    highlight = {colors.blue, colors.bg},
  },
  FirstSeparator = {
    provider = function() return icons.sep.left end,
    highlight = { colors.bg, colors.bg},
  },
  GitIcon = {
    provider = function() return icons.git.." " end,
    condition = in_git_repo,
    highlight = {colors.bg, colors.cyan},
    separator = icons.sep.left,
    separator_highlight = {colors.cyan, colors.bg},
  },
  GitBranch = {
    provider = function()
      local vcs = require('galaxyline.provider_vcs')
      local branch_name = vcs.get_git_branch() or ""
      if (string.len(branch_name) > 28) then
        return "  "..string.sub(branch_name, 1, 25).."..."
      end
      return "  "..branch_name .. " "
    end,
    condition = in_git_repo,
    highlight = {colors.cyan,colors.bg},
  },
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.green, colors.bg},
  },
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.orange, colors.bg},
  },
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.red,colors.bg},
  },
  TimeIcon = { 
    provider = function() return icons.time.." " end,
    condition = in_git_repo,
    highlight = {colors.fg, colors.section_bg},
    separator = icons.sep.left,
    separator_highlight = {colors.section_bg, colors.bg},
  },
  Time = {
    provider = function() 
      return "  "..os.date('%H:%M').." "
    end,
    highlight = {colors.fg, colors.section_bg},
  },
  LastElement = {
    provider = function() return icons.sep.right end,
    highlight = { colors.section_bg, colors.bg },
  },
  SFirstElement = {
    provider = function() return icons.sep.left end,
    highlight = { colors.grey, colors.bg },
    separator = icons.sep.right,
    separator_highlight = {colors.bg, colors.bg},
  },
  SFileIcon = {
    provider = 'FileIcon',
    highlight = { colors.grey, colors.bg },
  },
  SFileName = {
    provider = 'FileName',
    highlight = {colors.grey, colors.bg},
    separator = icons.sep.right,
    separator_highlight = {colors.bg, colors.bg}
  },
  SLastElement = {
    provider = function() return icons.sep.right end,
    highlight = { colors.grey, colors.bg }
  },
}

local function setSection(section, items)
  gls[section] = {}
  for k, v in ipairs(items) do
    gls[section][k] = {
      [v] = list[v]
    }
  end
end

setSection("left", {
  "FirstElement",
  "Logo",
  "ViMode", 
  "FileIcon",
  "FileName",
  -- "LineInfo",
  "DiagnosticError",
  "Space",
  "DiagnosticWarn",
  "Space",
  "DiagnosticInfo",
  "Space",
})

setSection("right", {
  -- "FirstSeparator",
  "GitIcon",
  "GitBranch",
  "DiffAdd",
  "DiffModified",
  "DiffRemove",
  "TimeIcon",
  "Time",
  "LastElement",
})

setSection("short_line_left", {"SFirstElement", "SFileIcon", "SFileName"})

setSection("short_line_right", {"SLastElement"})

