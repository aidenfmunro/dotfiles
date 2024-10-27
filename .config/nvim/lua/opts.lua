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

-- disable netrw for nvim-tree

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Set the compiler method to latexmk

g.vimtex_compiler_method = 'latexmk'

-- Configure latexmk options

g.vimtex_compiler_latexmk = {
    backend = 'nvim',                     -- Use nvim as the backend
    options = {
        '-pdf',                           -- Generate PDF
        '-lualatex',                       -- Use xelatex as the compiler
        '-interaction=nonstopmode',      -- Ignore errors during compilation
        '-synctex=1'                     -- Enable SyncTeX for PDF viewer
    },
}

-- Browser option for markdown preview

-- g.mkdp_browser = 'firefox'
