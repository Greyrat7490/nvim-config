local nnoremap = require("user.keymap").nnoremap
local vnoremap = require("user.keymap").vnoremap
local dap = require('dap');

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = 'executable',
  command = vim.fn.stdpath('data') .. "/dap/cpptools/debugAdapters/bin/OpenDebugAD7", -- adjust maybe
}

require('dap.ext.vscode').load_launchjs();
dap.configurations.cpp = dap.configurations.cppdbg
dap.configurations.rust = dap.configurations.cpp
dap.configurations.c = dap.configurations.cpp

require('dapui').setup({
  layouts = {
    {
      elements = {
        'scopes',
        'breakpoints',
        'stacks',
        'watches',
      },
      size = 40,
      position = 'left',
    },
    {
      elements = {
        'repl',
        'console',
      },
      size = 10,
      position = 'bottom',
    },
  },
});

local dapui = require('dapui')
dap.listeners.after.event_initialized['dap'] = function() dapui.open() end
dap.listeners.before.event_terminated['dap'] = function() dapui.close() end
dap.listeners.before.event_exited['dap'] = function() dapui.close() end


nnoremap("<C-A-D>", dapui.toggle)
vnoremap("<C-e>", dapui.eval)
nnoremap("<C-e>", dapui.eval)
nnoremap("<F5>", dap.continue)
nnoremap("<F10>", dap.step_over)
nnoremap("<F11>", dap.step_into)
nnoremap("<F12>", dap.step_out)
nnoremap("<F9>", dap.toggle_breakpoint)
nnoremap("<F33>", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end) -- Ctrl + F9
nnoremap("dr", dap.repl.open)
