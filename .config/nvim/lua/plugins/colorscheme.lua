local module = {
    'folke/tokyonight.nvim',
    lazy = false, -- Loads this plugin at the beginning
    priority = 1000,
    opts = {
    style = "storm", -- base style to tweak
    on_colors = function(colors)
      colors.bg = "#1b1f1d"           -- deep garden soil
      colors.bg_dark = "#151a17"      -- forest shadow
      colors.bg_highlight = "#2e3c31" -- moss
      colors.bg_float = "#2d352f"     -- fern leaf
      colors.fg = "#c7d2c2"           -- pale dew
      colors.fg_dark = "#a6b19c"      -- muted sage
      colors.comment = "#6a715e"      -- dried herb
      colors.keyword = "#91a68c"      -- silvery eucalyptus
      colors.identifier = "#a89c84"   -- dry grass
      colors.statement = "#998f7e"    -- tree bark
      colors.string = "#c3ad96"       -- faded rose
      colors.type = "#98b89b"         -- soft mint
      colors.constant = "#cabba7"     -- dry clay
    end,
    },
    config = function(_, opts)
        require("tokyonight").setup(opts)
        vim.cmd([[colorscheme tokyonight]])
    end,
}

return module
