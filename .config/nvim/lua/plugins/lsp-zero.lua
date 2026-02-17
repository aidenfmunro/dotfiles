local module = {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x', -- Upgrade from v2.x to v4.x
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      local lsp_zero = require('lsp-zero')

      -- 1. Attach keymaps when an LSP connects to a buffer
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
      end)

      -- 2. Setup Mason to manage your binaries
      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {'clangd', 'veridian', 'lua_ls'},
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })
    end
  }
}

return module
