--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.builtin.dap.active = true;

vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "haskell",
}


-- lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
local opts = {} -- check the lspconfig documentation for a list of all possible options
require("lvim.lsp.manager").setup("pyright", opts)
--require("lvim.lsp.manager").setup("ccls", opts)
require("lvim.lsp.manager").setup("clangd", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
--    {"folke/tokyonight.nvim"},
-- { "Pocco81/DAPInstall.nvim" },
    -- {
    --     "ray-x/lsp_signature.nvim",
    --     event = "BufRead",
    --     config = function()
    --         require "lsp_signature".setup()
    --     end
    -- },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
  { "rcarriga/nvim-dap-ui"},
  {"alker0/chezmoi.vim"},
    {"bfredl/nvim-ipy"},
    {"npxbr/glow.nvim"},
    {"folke/todo-comments.nvim"},
    {"danymat/neogen"},
-- {
--   "folke/todo-comments.nvim",
--   event = "BufRead",
--   config = function()
--     require("todo-comments").setup()
--   end,
-- },

--     {
--   "npxbr/glow.nvim",
--   ft = {"markdown"}
--   -- run = "yay -S glow"
-- },
    {
"nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
                load = {
        ["core.defaults"] = {}
    }
        }
    end,
    requires = "nvim-lua/plenary.nvim"
    },
    {"ray-x/lsp_signature.nvim"},
}

require('neogen').setup({ snippet_engine = "luasnip" })
require("dapui").setup()


-- cfg = {
--   debug = false, -- set to true to enable debug logging
--   log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log", -- log dir when debug is on
--   -- default is  ~/.cache/nvim/lsp_signature.log
--   verbose = false, -- show debug line number

--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--                -- If you want to hook lspsaga or other signature handler, pls set to false
--   doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
--                  -- set to 0 if you DO NOT want any API comments be shown
--                  -- This setting only take effect in insert mode, it does not affect signature help in normal
--                  -- mode, 10 by default

--   floating_window = true, -- show hint in a floating window, set to false for virtual text only mode

--   floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
--   -- will set to true when fully tested, set to false will use whichever side has more space
--   -- this setting will be helpful if you do not want the PUM and floating win overlap

--   floating_window_off_x = 1, -- adjust float windows x position.
--   floating_window_off_y = 1, -- adjust float windows y position.


--   fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
--   hint_enable = true, -- virtual hint enable
--   hint_prefix = "🐼 ",  -- Panda for parameter
--   hint_scheme = "String",
--   hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
--   max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
--                    -- to view the hiding contents
--   max_width = 80, -- max_width of signature floating_window, line will be wrapped if exceed max_width
--   handler_opts = {
--     border = "rounded"   -- double, rounded, single, shadow, none
--   },

--   always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

--   auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
--   extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
--   zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

--   padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc

--   transparency = nil, -- disabled by default, allow floating win transparent value 1~100
--   shadow_blend = 36, -- if you using shadow as border use this set the opacity
--   shadow_guibg = 'Black', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
--   timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
--   toggle_key = '<M-x>' -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
-- }

-- recommended:
require'lsp_signature'.setup() -- no need to specify bufnr if you don't use toggle_key
require'todo-comments'.setup() -- no need to specify bufnr if you don't use toggle_key

-- You can also do this inside lsp on_attach
-- note: on_attach deprecated
-- require'lsp_signature'.on_attach(cfg, bufnr) -- no need to specify bufnr if you don't use toggle_key

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  -- { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
  { "BufNewFile", "*.pl", "0r ~/.config/lvim/templates/skeleton.pl" },
}

require'lspconfig'.perlls.setup{}
require'lspconfig'.hls.setup{}

local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/k11m1/Downloads/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

-- -- Debugger
-- lvim.builtin.dap.on_config_done = function(dap)
--     dap.adapters.lldb = {
--       type = 'executable',
--       command = '/usr/bin/lldb-vscode',
--       name = "lldb"
--     }

--     dap.configurations.cpp = {
--         {
--             name = "Launch",
--             type = "lldb",
--             request = "launch",
--             program = "${workspaceFolder}/build/binary_name",
--             cwd = "${workspaceFolder}/build",
--             stopOnEntry = false,
--             args = {},
--             runInTerminal = false,
--         },
--     }
--     dap.configurations.c = dap.configurations.cpp
-- end


require('snips')



