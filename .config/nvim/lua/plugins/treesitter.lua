local module = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
}

-- NOTE: download tree-sitter-cli
function module.config()
    local parsers = {
        "c",
        "cpp",
        "lua",
        "bash",
        "python",
        "rust",
        -- "javascript",
        -- "typescript",
        -- "tsx",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
        "vim",
        "vimdoc",
    }

    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter_start", { clear = true }),
        callback = function(args)
            local filetype = args.match
            local lang = vim.treesitter.language.get_lang(filetype)

            if not lang then
                return
            end

            pcall(vim.treesitter.start, args.buf, lang)
        end,
    })
end

return module
