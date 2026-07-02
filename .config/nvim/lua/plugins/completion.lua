local module = {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",     -- Connects LSP to nvim-cmp
        "hrsh7th/cmp-buffer",       -- Completes words from current file
        "hrsh7th/cmp-path",         -- Completes file paths
        "hrsh7th/cmp-vsnip",        -- Snippet engine source
        "hrsh7th/vim-vsnip",        -- Required for snippets to work
    },
}

function module.config()
    local cmp = require("cmp")

    cmp.setup({
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },
        -- Keymaps while the autocomplete menu is active
        mapping = cmp.mapping.preset.insert({
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<C-Space>"] = cmp.mapping.complete(), -- Open menu manually
            ["<C-e>"] = cmp.mapping.close(),
            ["<CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Insert,
                select = true,
            }),
        }),
        -- Where nvim-cmp pulls suggestions from
        sources = cmp.config.sources({
            { name = "nvim_lsp" }, -- This pulls completion data from rust-analyzer!
            { name = "vsnip" },
            { name = "path" },
            { name = "buffer" },
        }),
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
    })
end

return module
