if vim.g.vscode ~= nil then
  return
end

-- Telescope setting
local telescope = require("telescope")
local actions = require("telescope.actions")
local themes = require("telescope.themes")
local Util = require "util"
local nmap = Util.nmap
local map = Util.map
-- Global remapping
------------------------------

function themes.drop(opts)
  opts = opts or {}

  local theme_opts = {
    -- WIP: Decide on keeping these names or not.
    theme = "dropdown",
    sorting_strategy = "ascending",
    layout_strategy = "center",
    results_title = false,
    preview_title = "Preview",
    preview_cutoff = 1, -- Preview should always show (unless previewer = false)
    Layouts_config = {
      width = 80,
      height = 17,
    },
    borderchars = {
      { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
      preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
    },
  }
  return vim.tbl_deep_extend("force", theme_opts, opts)
end

function themes.float(opt)
  return {
    borderchars = {
      { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      prompt = {"─", "│", "─", "│", "├", "┤", "┴", "╰"},
      results = {"─", "│", " ", "│", "╭", "┬", "│", "│"},
      preview = { "─", "│", "─", " ", "─", "╮", "╯", "─"},
    },
    layout_config = {
      width = 0.8,
    },
    -- previewer = false,
    prompt_title = false,
    preview_title = false,
    results_title = false,
  }
end

function themes.drawer(opts)
  opts = opts or {}
  return vim.tbl_deep_extend("force", {
    theme = "drawer",
    sorting_strategy = "ascending",
    prompt_title = false,
    preview_title = false,
    results_title = false,
    layout_strategy = "bottom_pane",
    layout_config = {
      height = 25,
      prompt_position = "bottom",
    },
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = { "─", " ", "─", " ", " ", " ", " ", " " },
      results = { "─", " ", " ", " ", " ", " ", " ", " "},
      preview = { " ", " ", " ", "│", "│", " ", " ", "│"},
    },
  }, opts)
end

function themes.no_preview()
  return require('telescope.themes').get_dropdown({
    layout_config = {
      width = 70,
      height = 22,
    },
    previewer = false,
    prompt_title = false,
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    },
  })
end


telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
    selection_caret = "☞ ",
    borderchars = {
      { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      prompt = {"─", "│", "─", "│", "├", "┤", "┴", "╰"},
      results = {"─", "│", " ", "│", "╭", "┬", "│", "│"},
      preview = { "─", "│", "─", " ", "─", "╮", "╯", "─"},
    },
    layout_config = {
      width = 0.8,
    },
    prompt_title = false,
    preview_title = false,
    results_title = false,
  },
  pickers = {
    commands = {
      theme = "ivy"
    }
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    },
    project = {
      base_dirs = {
        {path = "~/mi/code/", max_depth = 1},
        {path = "~/repo/", max_depth = 1}
      }
    },
    lsp_handlers = {
			code_action = {
				telescope = require('telescope.themes').get_cursor({
          prompt_title = false
        }),
			},
		},
  },
}

telescope.load_extension('lsp_handlers')
telescope.load_extension('media_files')
telescope.load_extension('tmux')
telescope.load_extension('project')

-- keymaps
nmap("<leader>t", ":Telescope builtin theme=no_preview<CR>")
nmap("<leader>f", ":Telescope find_files theme=float<CR>")
nmap("ff", ":Telescope live_grep theme=float<CR>")
-- nmap("ff", ":lua live_grep()")
nmap("<leader>b", ":Telescope buffers theme=no_preview<CR>")
nmap("<C-b>", ":Telescope buffers theme=no_preview<CR>")
nmap("<leader>r", ":Telescope oldfiles theme=no_preview<CR>")
map("gp", ":Telescope project theme=no_preview<CR>")
map("<C-p>", ":Telescope commands theme=drawer<CR>")
nmap("fp", ":Telescope project theme=no_preview<CR>")
