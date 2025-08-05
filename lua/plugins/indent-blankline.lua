-- lua/plugins/indent-blankline.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  main  = "ibl",
  event = { "BufReadPre", "BufNewFile" },
  opts  = {
    indent = {
      char      = "│",
      tab_char  = "│",
      highlight = "IndentBlanklineIndent",
    },
    scope = {
      enabled    = true,
      show_start = true,
      highlight  = "IndentBlanklineContext",
    },
    exclude = {
      filetypes = { "dashboard", "NvimTree", "packer", "help" },
      buftypes  = { "terminal" },
    },
  },
}
