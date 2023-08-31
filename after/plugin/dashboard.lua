require("dashboard").setup({
    config = {
        header = {
            "           ▄ ▄                   ",
            "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
            "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
            "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
            "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
            "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
            "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
            "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
            "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
            "                                 ",

        },
        footer = { "おパンツ見せてください" },
        shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'PackerUpdate', key = 'u' },
            { desc = ' Files', group = 'Label', action = 'Telescope find_files', key = 'f', },
            { desc = ' Dotfiles', group = 'Number', action = 'Telescope dotfiles', key = 'd', },
            { desc = '󰜉 Restore Session', group = 'DiagnosticHint', action = 'lua require("persistence").load()', key = 'r', },
        },
        project = { enable = false },
        mru = { limit = 15, icon = ' ', label = 'Recent Files:', },
    }
})
