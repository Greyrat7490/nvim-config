local nnoremap = require("user.keymap").nnoremap
local builtin = require('telescope.builtin')

require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        file_ignore_patterns = { "node_modules" },
        path_display = { "truncate" },
        winblend = 0,
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    }
}

nnoremap("<leader>f", builtin.find_files)
nnoremap("<leader>A", function() builtin.find_files({ follow=true, no_ignore=true, hidden=true }) end)
nnoremap("<leader>s", builtin.live_grep)
nnoremap("<leader>b", builtin.buffers)

nnoremap("<leader>gs", builtin.git_status)
nnoremap("<leader>gh", builtin.git_stash)
nnoremap("<leader>gc", builtin.git_commits)
nnoremap("<leader>gb", builtin.git_branches)
