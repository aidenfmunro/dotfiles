local module = {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim"},
  config = function()
    require("noice").setup {
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- floating centered popup
        opts = {
          border = { style = "rounded" },
          relative = "editor",
          position = {
            row = "50%",   -- vertical center
            col = "50%",   -- horizontal center
          },
          size = {
            width = 60,   -- you can tweak width
            height = "auto",
          },
        }
      },
      presets = {
        bottom_search = false, -- keep search in popup too
        command_palette = true,
      },
    }
  end,
}

return module

