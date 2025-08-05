-- plugins/lualine.lua
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local eva = require("lualine.themes.eva")
    require("lualine").setup({
      options = {
        theme              = eva,
        component_separators = '',
        section_separators   = ''
      }
    })
  end,
}

