local dap = require("dap")
local Util = require "util"
local map = Util.map
local nmap = Util.nmap

-- dap
nmap("<leader>dc", ":lua require'dap'.continue()<CR>")
nmap("<leader>dr", ":lua require'dap'.repl.toggle()<CR>")
nmap("<leader>dn", ":lua require'dap'.step_over()<CR>")
nmap("<leader>di", ":lua require'dap'.step_into()<CR>")
nmap("<leader>do", ":lua require'dap'.step_out()<CR>")
nmap("<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
nmap("<leader>dl", ":lua require'dap'.run_last()<CR>")
nmap("<leader>dd", ":lua require'dap'.disconnect()<CR>")
nmap("<leader>dq", ":lua require'dap'.close()<CR>")

-- dap-ui
nmap("<leader>du", ":lua require'dapui'.toggle()<CR>")
nmap("<leader>de", ":lua require'dapui'.eval()<CR>")

dap.adapters.node = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/repo/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    type = 'node',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
}

dap.adapters.chrome = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/repo/vscode-chrome-debug/out/src/chromeDebug.js"} -- TODO adjust
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}"
  }
}

require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "l" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      { id = "repl", size = 0.5 },
      -- { id = "breakpoints", size = 0.1 },
      -- { id = "stacks", size = 0.2 },
      { id = "scopes", size = 0.5 }, -- Can be float or integer > 1,
    },
    size = 60,
    position = "right", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "stacks", "watches", "breakpoints" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 }, 
})

-- virtual text
vim.g.dap_virtual_text = true
