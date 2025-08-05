-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  ft = { "c", "cpp", "asm" },
  config = function()
    local lspconfig = require("lspconfig")

    -- 1) Define diagnostic signs with nerd-font icons
    local signs = {
      Error = "",  -- U+F057
      Warn  = "",  -- U+F071
      Info  = "",  -- U+F05A
      Hint  = "",  -- U+F059
    }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- 2) Configure diagnostics display
    vim.diagnostic.config({
      signs = true,              -- use defined signs
      virtual_text = false,
      underline    = true,
      update_in_insert = false,
      severity_sort    = true,
      float = { border = "rounded" },
    })

    -- 3) Setup clangd (and other servers if needed)
    lspconfig.clangd.setup({
      -- your clangd options here
    })

    -- Example: setup additional servers
    -- lspconfig.pyright.setup({})
  end,
}

