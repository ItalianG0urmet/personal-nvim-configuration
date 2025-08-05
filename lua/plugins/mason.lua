-- plugins/mason.lua
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  lazy = false,
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed       = { "rust_analyzer", "clangd" },
      automatic_installation = true,
    })

  end,
}
