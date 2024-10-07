local g = vim.g
local opt = vim.opt

g.mapleader = ' '
opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
vim.smartindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.cursorline = true


-- Comment this line
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.scrolloff = 8
opt.signcolumn = 'yes'
opt.colorcolumn = '80'
opt.updatetime = 50

