local vi_mode_utils = require 'feline.providers.vi_mode'

local get_diag = function(str)
  local count = vim.lsp.diagnostic.get_count(0, str)
  return (count > 0) and ' '..count or ''
end

local function getCoinData(name)
  local price = os.execute("curl -s https://api.coingecko.com/api/v3/coins/dogecoin | python -c \"import json, sys; print(json.load(sys.stdin)['market_data']['current_price']['usd'])\"") 
  local res = os.execute("curl -s https://api.coingecko.com/api/v3/coins/dogecoin")
  print(res)
  return "testing" 
end


local colors = {
  -- bg = '#111111',
  bg = '#000000',
  -- bg = "#263137",
  fg = '#f8f8f2',
  section_bg = '#3D434F',
  -- section_bg = '#484E5A',
  grey = "#545454",

  blue = '#8be9fd',
  yellow = '#ffb93c',
  orange = '#fe8019',
  red = '#ff5551',
  magenta = '#ff79c6',
  cyan = '#59c2ff',
  green = '#83c746',
}

local diag_colors = {
  Error = colors.red,
  Warning = colors.yellow,
  Information = "#00c844",
  Hint = colors.cyan,
}

local git_colors = {
  added = colors.cyan,
  changed = colors.yellow,
  removed = colors.red,
}

local icons = {
  logo = "",
  left_rount = "",
  right_round = "",
  git = "",
  -- time = "",
  time = "􀐫",
  left = "▊",
  right = "▐",
  dot = "●",
  circle = "⭘",
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
}

local function sep(str, hl)
  return {
    str = str,
    hl = hl,
  }
end

local function left_sep(hl)
  return sep(icons.left, hl)
end

local function right_sep(hl)
  return sep(icons.right, hl)
end

local divider = {
  provider = function() return "  " end,
}

local left = {
  provider = function() return icons.left end,
  hl = {fg=colors.red}
}
local right = {
  provider = function() return icons.right end,
  hl = {fg=colors.section_bg}
}
local logo = {
  provider = function() return icons.logo.." " end,
  hl = {fg= "bg", bg = colors.cyan},
  left_sep = left_sep({bg = "bg", fg = colors.cyan}),
}

local function coin(name)
  return {
    provider = function() return getCoinData("bitcoin") end,
    hl = {fg= "bg", bg = colors.section_bg},
    left_sep = left_sep({bg = "bg", fg = colors.cyan}),
  }
end

local vi_mode_component = {
  provider = function()
    local mode_alias = {
      n = 'NORMAL',
      no = 'NORMAL',
      i = 'INSERT',
      v = 'VISUAL',
      V = 'V-LINE',
      [''] = 'V-BLOCK',
      c = 'COMMAND',
      cv = 'COMMAND',
      ce = 'COMMAND',
      R = 'REPLACE',
      Rv = 'REPLACE',
      s = 'SELECT',
      S = 'SELECT',
      [''] = 'SELECT',
      t = 'TERMINAL',
    }
    return " "..mode_alias[vim.fn.mode()]
  end,
  hl = function()
    return {
      name = vi_mode_utils.get_mode_highlight_name(),
      -- bg = colors.section_bg,
      fg = vi_mode_utils.get_mode_color(),
      style = 'bold',
    }
  end,
}


local file = {
  provider = "file_info",
  hl = { fg = colors.cyan, },
}

local function diagnostic(type)
  return { 
    provider = function() return icons.circle..get_diag(type).." " end,
    hl = { fg = diag_colors[type], style = 'bold' },
  }
end

local git = { 
  provider = 'git_branch', 
  icon = icons.git.." ",
  enabled = function() return vim.b.gitsigns_status_dict ~= nil end,
  hl = { fg = colors.orange },
}

local function gitdiff(type)
  local key = "git_diff_"..type
  return {
    provider = key,
    hl = {fg = git_colors[type]}
  }
end

local time = {
  provider = function() 
    return " 􀐫 "..os.date('%H:%M').." "
  end,
  hl = { fg = colors.fg }
}

require'feline'.setup {
  default_fg = '#8FBCBB',
  default_bg = colors.bg,
  colors = {
    black = '#000000',
    skyblue = '#81A1C1',
    cyan = '#88C0D0',
    green  = '#8FBCBB',
    oceanblue = '#5E81AC',
    magenta = '#B48EAD',
    orange = '#D08770',
    red = '#EC5F67',
    violet = '#B48EAD',
    white  = '#ECEFF4',
    yellow = '#EBCB8B',
  },
  vi_mode_colors = {
    NORMAL = 'cyan',
    OP = 'cyan',
    INSERT = 'white',
    VISUAL = 'green',
    BLOCK = 'green',
    REPLACE = 'yellow',
    ['V-REPLACE'] = 'yellow',
    ENTER = 'cyan',
    MORE = 'cyan',
    SELECT = 'magenta',
    COMMAND = 'cyan',
    SHELL = 'skyblue',
    TERM = 'skyblue',
    NONE = 'orange',
  },
  components = {
    left = {
      active = {
        left,
        vi_mode_component,
        divider,
        file,
        divider,
        diagnostic("Error"),
        diagnostic("Warning"),
        diagnostic("Information"),
        diagnostic("Hint"),
        divider,
      },
      inactive = {
        left,
        divider,
        file,
      },
    },
    mid = { 
      active = {}, 
      inactive = {} 
    },
    right = {
      active = {
        git,
        gitdiff("added"),
        divider,
        gitdiff("changed"),
        divider,
        gitdiff("removed"),
        time,
        -- right,
      },
      inactive = {
        -- right,
      }
    }
  },
  properties =  {
    force_inactive = {
      filetypes = {
        'NvimTree',
        'packer',
        'dap-repl',
        'dapui_scopes', 'dapui_stacks', 'dapui_watches', 'dapui_repl',
        'LspTrouble',
        'Outline',
      },
      buftypes = {'terminal'},
      bufnames = {},
    }
  },
}

