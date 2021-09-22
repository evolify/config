local vim = vim

-- this initializes jhe packer plugin manager
vim.cmd[[packadd packer.nvim]]

vim.g.kommentary_create_default_mappings = false

-- plugins
require("packer").startup(
  function()
    use {"wbthomason/packer.nvim", opt = true}
    use "tpope/vim-surround"
    use "asvetliakov/vim-easymotion"
    use "hrsh7th/vim-eft"
    use "rhysd/accelerated-jk"
    use {
      "karb94/neoscroll.nvim",
      config = function()
        require('neoscroll').setup()
      end
    }
    use "nvim-lua/plenary.nvim"
    use "rktjmp/lush.nvim"
    use "~/repo/starry"
  end
)

