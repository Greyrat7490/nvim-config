local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'sainnhe/everforest',
    'sainnhe/sonokai',
    'sainnhe/edge',
    'Mofiqul/dracula.nvim',
    'EdenEast/nightfox.nvim',
    'folke/tokyonight.nvim',
    'catppuccin/nvim',

    'mfussenegger/nvim-dap',                                         -- debugger
    'rcarriga/nvim-dap-ui',                                          -- debugger ui

    { "williamboman/mason.nvim", build = ":MasonUpdate" },           -- Install LSP, DAP, ...
    'neovim/nvim-lspconfig',                                         -- Language Server
    "williamboman/mason-lspconfig.nvim",

    'hrsh7th/nvim-cmp',                                              -- Automcomplition
    'L3MON4D3/LuaSnip',                                              -- snippets (required for complition)
    'rafamadriz/friendly-snippets',                                  -- more snippets
    'onsails/lspkind.nvim',                                          -- lsp kind (nvim-cmp entry formated)

    'saadparwaiz1/cmp_luasnip',                                      -- complition source: snippets
    'hrsh7th/cmp-nvim-lsp',                                          -- complition source: lsp
    'hrsh7th/cmp-buffer',                                            -- complition source: buffer

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },      -- syntax highlighting

    'kyazdani42/nvim-tree.lua',                                      -- file tree
    'mbbill/undotree',                                               -- undotree
    'ellisonleao/glow.nvim',                                         -- markdown preview
    'lervag/vimtex',                                                 -- LaTeX live previewer and more

    'nvim-telescope/telescope.nvim',                                 -- fuzzy find, rg, git, buffers, ...
    'ThePrimeagen/harpoon',                                          -- main navigation

    'nvim-lua/plenary.nvim',                                         -- dependancy for some plugins

    'mhinz/vim-signify',                                             -- git signs
    'tpope/vim-fugitive',                                            -- git

    'norcalli/nvim-colorizer.lua',                                   -- colored hex values
    'nvim-tree/nvim-web-devicons',                                   -- icons
    'hoob3rt/lualine.nvim',                                          -- status line

    'nvimdev/dashboard-nvim',
})
