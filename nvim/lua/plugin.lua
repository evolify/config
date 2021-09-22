local vim = vim
local api = vim.api

local vscode = vim.g.vscode ~= nil

local function not_vscode()
  return not vscode
end

-- this initializes jhe packer plugin manager
api.nvim_command [[packadd packer.nvim]]

vim.g.kommentary_create_default_mappings = false

-- plugins
require("packer").startup(
  function()
    use {"wbthomason/packer.nvim", opt = true}

    use "svermeulen/vimpeccable"

    use {
      "famiu/nvim-reload",
      opt = true,
      config = function()
        require('nvim-reload').post_reload_hook = function()
          require('feline').reset_highlights()
        end
      end
    }

    use {
      "akinsho/nvim-bufferline.lua",
      config = function()
        require "custom/bufferline"
      end
    }

    use "rktjmp/lush.nvim"
    use "~/repo/starry"
    use 'folke/tokyonight.nvim'
    -- use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use "~/repo/ayu-vim"
    use "google/vim-colorscheme-primary"

    use {
      "folke/which-key.nvim",
      config = function()
        require "custom/whichkey"
      end
    }
    use "mattn/emmet-vim"
    use "tpope/vim-surround"
    use "maxmellon/vim-jsx-pretty"
    use "b3nj5m1n/kommentary"
    -- use "terrortylor/nvim-comment"
    use "easymotion/vim-easymotion"
    use "phaazon/hop.nvim"
    use "hrsh7th/vim-eft"
    use "rhysd/accelerated-jk"
    use {
      "karb94/neoscroll.nvim",
      config = function()
        require('neoscroll').setup({
          hide_cursor = false
        })
      end
    }
    use "itchyny/vim-cursorword"
    use {
      "kyazdani42/nvim-tree.lua",
      config = function()
        require "custom/tree"
      end
    }
    use "prettier/vim-prettier"
    use "/usr/local/opt/fzf"
    use "junegunn/fzf.vim"
    use "pbogut/fzf-mru.vim"
    use "nvim-lua/plenary.nvim"

    -- git
    use "rhysd/git-messenger.vim"
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require('gitsigns').setup({
          current_line_blame = true,
          signcolumn = false,
        })
      end
    }
    use "kdheepak/lazygit.nvim"
    opt = true,
    use {
      "sindrets/diffview.nvim",
      config = function()
        require "custom/diffview"
      end
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = {'nvim-lua/popup.nvim'},
      cond = not_vscode,
      opt = true,
      config = function() 
        require "custom/telescope"
      end
    }
    use "nvim-telescope/telescope-media-files.nvim"
    use "christoomey/vim-tmux-navigator"
    use {
      "sindrets/winshift.nvim",
      config = function()
        -- require("winshift").setup({})
      end
    }
    use "camgraff/telescope-tmux.nvim"
    use "nvim-telescope/telescope-project.nvim"
    use "glepnir/dashboard-nvim"
    use {
      "akinsho/nvim-toggleterm.lua",
      config = function()
        require "custom/toggleterm"
      end
    }
    use {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require'colorizer'.setup()
      end
    }
    use "kyazdani42/nvim-web-devicons"
    use {
      "famiu/feline.nvim",
      config = function()
        require "custom/feline"
      end
    }
    -- use "romgrk/barbar.nvim"
    use {
      "neovim/nvim-lspconfig",
      config = function()
        require "custom/lsp"
      end
    }
    use {
      "onsails/lspkind-nvim",
      --[[ config = function()
        require "custom/lspkind"
      end ]]
    }
    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-emoji",
      },
      config = function()
        require "custom/cmp"
      end
    }
    use "hrsh7th/vim-vsnip"
    -- use "hrsh7th/vim-vsnip-integ"
    -- use "glepnir/lspsaga.nvim"
    -- disable tabnine
    -- use "tzachar/compe-tabnine"
    -- use "ojroques/nvim-lspfuzzy"
    use {
      "simrat39/symbols-outline.nvim",
      config = function()
        require"custom/outline"
      end
    }
    use "ray-x/lsp_signature.nvim"
    use "gbrlsnchs/telescope-lsp-handlers.nvim"
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require "custom/treesitter"
      end
    }
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "nvim-treesitter/playground"
    use "p00f/nvim-ts-rainbow"
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use "nvim-treesitter/nvim-tree-docs"
    use "windwp/nvim-ts-autotag"
    use {
      "windwp/nvim-autopairs",
      config = function() 
        require('nvim-autopairs').setup()
      end
    }
    use "theHamsta/nvim-treesitter-pairs"
    use {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup {
          filetype_exclude = {"dashboard"},
          -- space_char_blankline = " ",
          use_treesitter = true,
          show_current_context = true,
        }
      end
    }
    use {
      "folke/todo-comments.nvim",
      config = function()
        require"custom/todo-comments"
      end
    }
    use "kshenoy/vim-signature"
    use { 
      "rcarriga/nvim-dap-ui",
      opt = true,
      requires = {"mfussenegger/nvim-dap"},
      config = function()
        require "custom/dap"
      end
    }
    use {
      "hkupty/iron.nvim"
    }
    use "metakirby5/codi.vim"
    use {
      "kristijanhusak/orgmode.nvim",
      requires = {
        "akinsho/org-bullets.nvim"
      },
      config = function()
        require "custom/orgmode"
      end
    }
    use {
      "folke/zen-mode.nvim",
      config = function()
        require "custom/zen"
      end
    }
    use "folke/twilight.nvim"
    use {
      "beauwilliams/focus.nvim",
      config = function()
        require("focus").setup({})
      end
    }
    use "~/repo/blockboard.nvim"
  end
)

