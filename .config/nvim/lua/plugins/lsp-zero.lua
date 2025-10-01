local module = {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"L3MON4D3/LuaSnip"},
    },
    config = function()
      local lsp = require("lsp-zero").preset("recommended")

      -- Setup clangd for C/C++
      lsp.ensure_installed({"clangd"})

      -- Optional: customize clangd args (e.g., for compile_commands.json)
      lsp.configure("clangd", {
        cmd = { "clangd",
                "--background-index",
                "--clang-tidy",
                "--compile-commands-dir=build"},
        filetypes = { "c", "cc", "cpp", "objc", "objcpp" },
      })

      -- Setup LSP and completion
      lsp.setup()
    end,
  }
}

return module

