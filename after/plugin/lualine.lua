require('lualine').setup{
    options = {
        theme = 'dracula',
        section_separators = '',
        component_separators = ''
    }
}

vim.api.nvim_create_autocmd( { "RecordingEnter" }, { pattern = "*", command = "set cmdheight=1" })
vim.api.nvim_create_autocmd( { "RecordingLeave " }, { pattern = "*", command = "set cmdheight=0" })
