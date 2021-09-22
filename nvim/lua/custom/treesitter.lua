local o = vim.o

o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldlevelstart = 99

require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
  indent = {
    enable = true
  },
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  doc = {
    enable = true,
    keymap = {
      doc_node_at_cursor = 'gcd'
    }
  },
  rainbow = {
    enable = true
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true
  },
  pairs = {
    enable = true,
    disable = {},
    highlight_pair_events = {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
    highlight_self = true,
    goto_right_end = false, -- whether to go to the end of the right partner or the beginning
    fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
    keymaps = {
      goto_partner = "<leader>%"
    }
  },
  context_commentstring = {
    enable = true
  }
}
