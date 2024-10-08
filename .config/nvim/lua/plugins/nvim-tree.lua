local module = {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
}

function module.config()
    require "nvim-tree".setup {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    }
end

return module
