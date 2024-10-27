local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- disable arrow keys

set("n", "<Up>",    ":echo 'Use k instead'<CR>", opts)
set("n", "<Down>",  ":echo 'Use j instead'<CR>", opts)
set("n", "<Left>",  ":echo 'Use h instead'<CR>", opts)
set("n", "<Right>", ":echo 'Use l instead'<CR>", opts)

set("i", "<Up>",    "<ESC>:echo 'Use k instead'<CR>", opts)
set("i", "<Down>",  "<ESC>:echo 'Use j instead'<CR>", opts)
set("i", "<Left>",  "<ESC>:echo 'Use h instead'<CR>", opts)
set("i", "<Right>", "<ESC>:echo 'Use l instead'<CR>", opts)

set("v", "<Up>",    ":echo 'Use k instead'<CR>", opts)
set("v", "<Down>",  ":echo 'Use j instead'<CR>", opts)
set("v", "<Left>",  ":echo 'Use h instead'<CR>", opts)
set("v", "<Right>", ":echo 'Use l instead'<CR>", opts)

-- telescope keymaps

set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>',  opts)
set('n', '<leader>fb', '<cmd>Telescope buffers<CR>',    opts)
set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>',  opts)

-- fugitive keymaps

set('n', '<leader>gs', vim.cmd.Git)

-- harpoon keymaps

local mark = require "harpoon.mark"
local ui   = require "harpoon.ui"
local term = require "harpoon.term"

set('n', '<leader>e', ui.toggle_quick_menu, {})
set('n', '<leader>a', mark.add_file,        {})
set('n', '<C-j>', ui.nav_next,              {})
set('n', '<C-k>', ui.nav_prev,              {})
-- set('n', '<C-t>', function() term.gotoTerminal(1) end)

-- lsp keymaps

set("n", "gd", vim.lsp.buf.definition)
set("n", "K", vim.lsp.buf.hover)
set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
set("n", "<leader>vd", vim.diagnostic.open_float)
set("n", "[d", vim.diagnostic.goto_next)
set("n", "]d", vim.diagnostic.goto_prev)
set("n", "<leader>vca", vim.lsp.buf.code_action)
set("n", "<leader>vrr", vim.lsp.buf.references)
set("n", "<leader>vrn", vim.lsp.buf.rename)

-- lazygit keymaps

set("n", "<leader>lg", "<cmd>LazyGit<CR>", {})

-- nvim-tree keymaps

set('n', '<C-e>', ":NvimTreeToggle", {})

-- Glow keymaps

set('n', "<leader>mp", "<cmd>Glow<CR>", opts)

-- vimtex keymaps

set('n', '<leader>ll', "<plug>(vimtex-compile)", {})
set('n', '<leader>lo', "<plug>(vimtex-compile)", {})
