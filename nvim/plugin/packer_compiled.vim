" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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
  ["TrueZen.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/true_zen\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/TrueZen.nvim"
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
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
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
    config = { "\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\23current_line_blame\2\15signcolumn\1\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/bufferline\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-reload"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0E\1\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0023\1\3\0=\1\2\0K\0\1\0\0\21post_reload_hook\16nvim-reload\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/nvim-reload"
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
  ["orgmode.nvim"] = {
    config = { "\27LJ\2\n‰\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\21~/org/refile.org\1\2\0\0\f~/org/*\nsetup\forgmode\frequire\0" },
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
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/popup.nvim"
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
  ["telescope-tmux.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope-tmux.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21custom/telescope\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
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
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/whichkey\frequire\0" },
    loaded = true,
    path = "/Users/evolify/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21custom/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\23current_line_blame\2\15signcolumn\1\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16custom/tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22custom/toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19custom/outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/whichkey\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18custom/feline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\2\n‰\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\21~/org/refile.org\1\2\0\0\f~/org/*\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: TrueZen.nvim
time([[Config for TrueZen.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20custom/true_zen\frequire\0", "config", "TrueZen.nvim")
time([[Config for TrueZen.nvim]], false)
-- Config for: nvim-reload
time([[Config for nvim-reload]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0E\1\0\3\0\4\0\0066\0\0\0'\2\1\0B\0\2\0023\1\3\0=\1\2\0K\0\1\0\0\21post_reload_hook\16nvim-reload\frequire\0", "config", "nvim-reload")
time([[Config for nvim-reload]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
