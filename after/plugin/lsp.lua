require("mason").setup()
require("mason-lspconfig").setup {
    -- names in Mason in grey if different
    ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "clangd", "cssls", "asm_lsp", "gopls", "ltex", "html" },
}

require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end,

    ["tsserver"] = function ()
        require("lspconfig").tsserver.setup {
            init_options = {
                hostInfo = "neovim",
                plugins = { { name = "typescript-styled-plugin" } }
            }
        }
    end,

    ["rust_analyzer"] = function ()
        require("lspconfig").rust_analyzer.setup {
            settings = {
                diagnostics = {
                  enable = true,
                  disabled = { "unresolved-proc-macro" },
                  enableExperimental = true,
                }
            } 
        }
    end,

    ["ltex"] = function ()
        require("lspconfig").ltex.setup {
            -- disable ltex for gitcommit
            filetypes = { "bib", "markdown", "org", "plaintex", "rst", "rnoweb", "tex", "pandoc" }
        }
    end
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '<leader>P', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>N', vim.diagnostic.goto_next, opts)

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<leader>c', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>F', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
