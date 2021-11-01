-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/evolify/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/evolify/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/evolify/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/evolify/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/evolify/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n,\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\18commentstring\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/Comment.nvim"
  },
  ["accelerated-jk"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["blockboard.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/blockboard.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/codi.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/diffview\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18custom/feline\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\nb\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\0\1\2\0\0\rNvimTree\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/focus.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf-mru.vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/fzf-mru.vim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/git\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n’\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\0\2\25show_current_context\2\19use_treesitter\2\1\2\0\0\14dashboard\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["iron.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/iron.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17custom/marks\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/marks.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/bufferline\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/cmp\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/dap\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/lsp\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-reload"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\21reset_highlights\vfeline\frequireE\1\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0023\1\3\0=\1\2\0K\0\1\0\0\21post_reload_hook\16nvim-reload\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/opt/nvim-reload"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree-docs"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-tree-docs"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16custom/tree\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/treesitter\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-pairs"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-treesitter-pairs"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["org-bullets.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/org-bullets.nvim"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19custom/orgmode\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  starry = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/starry"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19custom/outline\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-lsp-handlers.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope-lsp-handlers.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-tmux.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope-tmux.nvim"
  },
  ["telescope.nvim"] = {
    after = { "popup.nvim" },
    cond = { "\27LJ\2\n\21\0\0\1\1\0\0\3-\0\0\0\19\0\0\0L\0\2\0\1À\0" },
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21custom/telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25custom/todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-colorscheme-primary"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-colorscheme-primary"
  },
  ["vim-cursorword"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-cursorword"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-eft"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-eft"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vimpeccable"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/whichkey\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/winshift.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/zen\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/zen\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/diffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19custom/orgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17custom/marks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18custom/feline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\0\1\2\0\0\rNvimTree\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\18commentstring\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16custom/tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19custom/outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/git\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n’\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\0\2\25show_current_context\2\19use_treesitter\2\1\2\0\0\14dashboard\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: winshift.nvim
time([[Config for winshift.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "winshift.nvim")
time([[Config for winshift.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/whichkey\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15custom/lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25custom/todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Conditional loads
time([[Conditional loading of telescope.nvim]], true)
  require("packer.load")({"telescope.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
