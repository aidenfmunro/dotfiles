local set = vim.keymap.set

-- telescope keymaps

set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>',  { noremap = true, silent = true })
set('n', '<leader>fb', '<cmd>Telescope buffers<CR>',    { noremap = true, silent = true })
set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>',  { noremap = true, silent = true })

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

set('n', '<C-e>', ":NvimTreeToggle")
