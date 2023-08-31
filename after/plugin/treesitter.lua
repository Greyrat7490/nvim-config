require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        use_languagetree = true
    },
    additional_vim_regex_highlighting = false,
}

-- 1. Clone the repository or create a new project in, say, ~/projects/tree-sitter-zimbu. Make sure that the tree-sitter-cli executable is installed and in your path; see https://tree-sitter.github.io/tree-sitter/creating-parsers#installation for installation instructions.
-- 2. Run tree-sitter generate in this directory (followed by tree-sitter test for good measure).
-- You can also skip step 2 and use :TSInstallFromGrammar zimbu to install directly from a grammar.js in the top-level directory specified by url

-- custom parser (TODO: for gamma-lang)
--[[
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.zimbu = {
  install_info = {
    url = "~/projects/tree-sitter-zimbu", -- local path or git repo
    files = {"src/parser.c"},
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "zu", -- if filetype does not match the parser name
}
]]--

-- If Neovim does not detect your language's filetype by default, you can use Neovim's vim.filetype.add() to add a custom detection rule.
-- https://neovim.io/doc/user/lua.html#vim.filetype.add()
