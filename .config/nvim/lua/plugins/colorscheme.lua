local module = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    style = 'dark',
    config = function(_, opts)
        require("gruvbox").setup(opts)
        vim.cmd([[colorscheme gruvbox]])
    end,
}

return module
