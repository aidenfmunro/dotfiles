local module = {
    'folke/tokyonight.nvim',
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000,
    opts = {
        transparent = true,
        styles = {
           sidebars = "transparent",
           floats = "transparent",
        },
    },
}

function module.config()
	vim.cmd.colorscheme 'tokyonight-night'
end

return module
