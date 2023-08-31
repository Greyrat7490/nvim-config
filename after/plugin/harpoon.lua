local nnoremap = require("user.keymap").nnoremap
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

require("harpoon").setup({ 
    tabline = true,
})

vim.cmd [[
autocmd Filetype harpoon setlocal cursorline
]]

nnoremap("<leader>a", mark.add_file)

nnoremap("<leader>m", ui.toggle_quick_menu)

nnoremap("<leader>1", function() ui.nav_file(1) end)
nnoremap("<leader>2", function() ui.nav_file(2) end)
nnoremap("<leader>3", function() ui.nav_file(3) end)
nnoremap("<leader>4", function() ui.nav_file(4) end)
