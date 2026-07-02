local module = {
    "mrcjkb/rustaceanvim",
    version = "^9",
    lazy = false,
}

function module.init()
    vim.g.rustaceanvim = {
        server = {
            default_settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        allFeatures = true,
                    },
                    check = {
                        command = "clippy",
                    },
                },
            },
        },
    }
end

return module
