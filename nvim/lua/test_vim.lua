local api = vim.api

local win

local function create_float_win()
  -- vim.api.nvim_command('bo 8new')
  local opts = {
    relative = 'editor',
    width = 20, 
    height = vim.o.lines-4, 
    col = vim.o.columns-21,
    row = 2, 
    anchor = 'NW',
    style = "minimal",
    focusable = false,
    -- border = { "", "", "", "", "", "", "", "|" },
  }
  buf = api.nvim_create_buf(false, true)
  win = api.nvim_open_win(buf, 0, opts)

  api.nvim_buf_set_name(0, 'BlockBoard')

  api.nvim_buf_set_option(0, 'buftype', 'nofile')
  api.nvim_buf_set_option(0, 'swapfile', false)
  api.nvim_buf_set_option(0, 'filetype', 'blockboard')
  api.nvim_buf_set_option(0, 'bufhidden', 'wipe')

  api.nvim_command('setlocal nowrap')
  api.nvim_command('setlocal nonumber')
  api.nvim_command('setlocal norelativenumber')

end

local function close()
  if win and vim.api.nvim_win_is_valid(win) then
    vim.api.nvim_win_close(win, true)
  end
end

local function toggle()
  print(win, api.nvim_win_is_valid(win))
  if win and vim.api.nvim_win_is_valid(win) then
    close()
  else
    create_float_win()
  end
end


function test()
  print("test")
end

return {
  toggle = toggle
}
