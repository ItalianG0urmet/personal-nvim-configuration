-- lua/plugins/rust-tools.lua
return {
  "simrat39/rust-tools.nvim",
  event = "FileType rust",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("rust-tools").setup({
      tools = {
        inlay_hints = {
          auto                   = true,
          show_parameter_hints   = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix     = "=> ",
        },
      },
      server = {
        on_attach = function(_, bufnr)
          vim.diagnostic.config({
            virtual_text     = true,
            signs            = true,
            underline        = true,
            update_in_insert = false,
          }, bufnr)
          local km = {
            gd = vim.lsp.buf.definition,
            gr = vim.lsp.buf.rename,
            gh = vim.lsp.buf.hover,
            ca = vim.lsp.buf.code_action,
          }
          for k, fn in pairs(km) do
            vim.keymap.set("n", "<leader>" .. k, fn, { buffer = bufnr })
          end
        end,
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              enable  = true,
              command = "clippy",
            },
          },
        },
      },
    })
  end,
}

