vim.opt.mouse = "a"
vim.opt.tabstop = 4                     -- 4 Spaces for TAB
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 1                   -- bottom bar height 0 = "auto hidden"
vim.opt.ff = "unix"
vim.opt.shiftwidth = 4                  -- 4 Spaces for shifting text
vim.opt.smarttab = true                 -- Smart TAB's
vim.opt.expandtab = true                -- tab to spaces
vim.opt.smartindent = true              -- auto indent after '{', '}'
vim.opt.autoindent = true               -- keep indentation of previous line
vim.opt.cpoptions:append({I=true})      -- keep indentation if line is blank
vim.opt.splitbelow = true               -- Horizontal splits on bottom
vim.opt.splitright = true               -- Vertical splits on right
vim.opt.updatetime = 70                 -- Faster completion
vim.opt.timeoutlen =  400
vim.opt.signcolumn = "yes"              -- have a fixed column for the diagnostics
vim.opt.shortmess:append({c=true})      -- Avoid showing extra messages when using completion
vim.opt.hidden = true                   -- allow switching unsaved buffers
vim.opt.undofile = true                 -- persistent undo
vim.opt.laststatus = 3                  -- have a global statusline at the bottom instead of one for each window

vim.o.termguicolors = true

vim.g.mapleader = " "

-- neovide stuff
vim.g.neovide_transparency = 0.9
