--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general

O.format_on_save = true
O.completion.autocomplete = true
O.colorscheme = "zephyr"
O.auto_close_tree = 0
O.default_options.wrap = true
O.default_options.timeoutlen = 100
O.leader_key = " "

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.floatterm.active = true
O.plugin.zen.active = false
O.plugin.zen.window.height = 0.90

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
-- to change default formatter from yapf to black
-- O.lang.python.formatter.exe = "black"
-- O.lang.python.formatter.args = {"-"}

-- go
-- to change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = nil

-- api.nvim_command('set mouse=a')


-- rust
-- O.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }



-- require('onedark').setup()
O.user_plugins = {
  -- {"glepnir/zephyr-nvim"}, 
  {"ActivityWatch/aw-watcher-vim"}, {"savq/melange"}, 
  {"eddyekofo94/gruvbox-flat.nvim"},
  {"k11m1/zephyr-nvim"}, 
  -- {"norcalli/nvim-colorizer.lua"},
  {
        "ray-x/lsp_signature.nvim",
        config = function() require"lsp_signature".on_attach() end,
        event = "InsertEnter"
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function ()
            local status_ok, colorizer = pcall(require, "colorizer")
            if not status_ok then
                return
        end

        colorizer.setup( {"*"}, {
            RGB = true,         -- #RGB hex codes
            RRGGBB = true,      -- #RRGGBB hex codes
            RRGGBBAA = true,
            rgb_fn = true,
            hsl_fn = true,
            css = true,
            css_fn = true,
    })
        end,
    }
}

-- perl language server

require'lspconfig'.perlpls.setup{}
require'lspconfig'.perlls.setup{}

-- latex
-- O.lang.latex.auto_save = false
-- O.lang.latex.ignore_errors = { }

-- Additional Plugins
-- O.user_plugins = {
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
-- O.user_which_key = {
--   A = {
--     name = "+Custom Leader Keys",
--     a = { "<cmd>echo 'first custom command'<cr>", "Description for a" },
--     b = { "<cmd>echo 'second custom command'<cr>", "Description for b" },
--   },
-- }
-- vim.api.nvim_set_option('mouse', '')
vim.cmd("set mouse=")
vim.api.nvim_command("set mouse=")
-- vim.o.mouse = 'NONE'
-- require'colorizer'.setup()
