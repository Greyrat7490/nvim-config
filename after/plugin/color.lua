vim.g.everforest_background = 'hard'
vim.g.everforest_enable_italic = 1
vim.g.everforest_disable_italic_comment = 0
vim.g.everforest_transparent_background = 1
vim.g.everforest_diagnostic_text_highlight = 1
vim.g.everforest_diagnostic_line_highlight = 1
vim.g.everforest_diagnostic_virtual_text = 'colored'
vim.g.everforest_better_performance = 1

vim.g.sonokai_transparent_background = 1
vim.g.sonokai_diagnostic_text_highlight = 1
vim.g.sonokai_diagnostic_line_highlight = 1
vim.g.sonokai_diagnostic_virtual_text = 'colored'
vim.g.sonokai_better_performance = 1
vim.g.sonokai_menu_selection_background = 'purple'

vim.g.edge_style = 'neon'
vim.g.edge_enable_italic = 1
vim.g.edge_disable_italic_comment = 0
vim.g.edge_transparent_background = 1
vim.g.edge_diagnostic_text_highlight = 1
vim.g.edge_diagnostic_line_highlight = 1
vim.g.edge_diagnostic_virtual_text = 'colored'
vim.g.edge_better_performance = 1
vim.g.edge_menu_selection_background = 'purple'

require("dracula").setup({
  transparent_bg = true,
})

require('nightfox').setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
    }
  }
})

require("tokyonight").setup({
  style = "storm", -- `storm`, `moon`, a darker variant `night` and `day`
  transparent = true,
  styles = {
      floats = "transparent"
  }
})

-- latte, frappe, macchiato, mocha
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup({
	transparent_background = true,
    compile = {
        enabled = true,
        path = vim.fn.stdpath "cache" .. "/catppuccin"
    },
    integration = {
        cmp = true,
        nvimtree = {
            enabled = true,
            show_root = false,
            transparent_panel = true,
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dap = {
            enabled = true,
            enable_ui = true,
        },
        telescope = true,
    },
})

vim.cmd("colorscheme catppuccin")

vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{ higroup='Search', timeout=80 }
  augroup end
]])

-- vim.api.nvim_set_hl(0, 'Normal', { bg="NONE" })
-- vim.api.nvim_set_hl(0, 'HarpoonWindow', { fg="#d1d1d1", italic=true })
-- vim.api.nvim_set_hl(0, 'HarpoonBorder', { fg="#d1d1d1" })
