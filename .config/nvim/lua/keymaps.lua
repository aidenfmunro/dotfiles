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

-- harpoon keymaps

local harpoon = require("harpoon")

set("n", "<leader>a", function() harpoon:list():add() end)
set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

set("n", "<C-k>", function() harpoon:list():prev() end)
set("n", "<C-j>", function() harpoon:list():next() end)

-- lazygit keymaps

set("n", "<leader>lg", "<cmd>LazyGit<CR>", {})

-- nvim-tree keymaps

set('n', '<C-e>', "<cmd>NvimTreeToggle<CR>", {})

-- rust keymaps

set("n", "<leader>rca", function() vim.cmd.RustLsp('codeAction') end, opts)
set("n", "<leader>rod", function() vim.cmd.RustLsp('hover', 'actions') end, opts)
set("n", "<leader>rem", function() vim.cmd.RustLsp('expandMacro') end, opts)
