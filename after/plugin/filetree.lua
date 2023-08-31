require'nvim-tree'.setup {
    diagnostics = { enable = true }
}

require("user.keymap").nnoremap("<C-W><C-F>", "<CMD>NvimTreeOpen<CR>")
vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
