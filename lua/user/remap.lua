local nnoremap = require("user.keymap").nnoremap
local inoremap = require("user.keymap").inoremap
local vnoremap = require("user.keymap").vnoremap
local xnoremap = require("user.keymap").xnoremap
local nmap = require("user.keymap").nmap

inoremap("<C-c>", "<esc>")

-- best remaps ever
xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")
nmap("<leader>D", "\"_d")

-- to keep visual selection after indention
vnoremap("<", "<gv")
vnoremap(">", ">gv")
