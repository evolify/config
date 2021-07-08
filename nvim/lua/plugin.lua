local vim = vim
local api = vim.api

-- this initializes jhe packer plugin manager
api.nvim_command [[packadd packer.nvim]]

vim.g.kommentary_create_default_mappings = false

-- plugins
require("packer").startup(
  function()
    use {"wbthomason/packer.nvim", opt = true}

    use {
      "famiu/nvim-reload",
      config = function()
        require('nvim-reload').post_reload_hook = function()
          -- require('feline').reset_highlights()
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
    use "ayu-theme/ayu-vim"

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
        require('neoscroll').setup()
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

    -- use "tpope/vim-fugitive"
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

    use {
      'nvim-telescope/telescope.nvim',
      requires = {'nvim-lua/popup.nvim'},
      config = function()
        require "custom/telescope"
      end
    }
    use "nvim-telescope/telescope-media-files.nvim"
    use "christoomey/vim-tmux-navigator"
    use "camgraff/telescope-tmux.nvim"
    use "glepnir/dashboard-nvim"
    use {
      "akinsho/nvim-toggleterm.lua",
      config = function()
        require "custom/toggleterm"
      end
    }
    use "norcalli/nvim-colorizer.lua"

    use "kyazdani42/nvim-web-devicons"
    use {
      "famiu/feline.nvim",
      config = function()
        require "custom/feline"
      end
    }
    -- use "romgrk/barbar.nvim"
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-compe"
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
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "nvim-treesitter/playground"
    use "p00f/nvim-ts-rainbow"
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use "nvim-treesitter/nvim-tree-docs"
    use "windwp/nvim-ts-autotag"
    use "windwp/nvim-autopairs"
    use "theHamsta/nvim-treesitter-pairs"
    use {
      "folke/todo-comments.nvim",
      --[[ config = function()
        require("todo-comments").setup { }
      end ]]
    }
    use {
      "kristijanhusak/orgmode.nvim",
      config = function()
        require('orgmode').setup({
          org_agenda_files = {'~/org/*'},
          org_default_notes_file = '~/org/refile.org',
        })
      end
    }
    use {
      "Pocco81/TrueZen.nvim",
      config = function()
        require "custom/true_zen"
      end
    }
    use "~/repo/blockboard.nvim"
  end
)

