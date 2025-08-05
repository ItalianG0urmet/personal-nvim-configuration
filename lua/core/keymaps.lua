-- core/keymaps.lua: mappature generale
vim.g.mapleader = " "

-- LSP
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, { desc = "Hover Info" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- buffer navigation and save
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { noremap = true })
vim.keymap.set('n', '<leader>s', ':w<CR>', { noremap = true })

-- C Format
vim.keymap.set('n', '<leader>f', ':ClangFormat<CR>', { noremap = true })

-- Terminal
vim.keymap.set('n', '<leader>t', function()
  vim.cmd('split | terminal')
  vim.cmd('startinsert')
end, { noremap = true })

-- Remove reserch highlight
vim.keymap.set('n', '<Leader>/', ':nohlsearch<CR>', { silent = true })

-- Buffer close
vim.keymap.set("n", "<leader>x", function()
  local bufnr = vim.api.nvim_get_current_buf()
  if vim.bo.modified and vim.fn.bufname(bufnr) ~= "" then
    local choice = vim.fn.confirm(
      "Save buffer?",
      "&Yes\n&No\n&Back", 1
    )
    if choice == 1 then
      vim.cmd("write")
      vim.cmd("bd")
    elseif choice == 2 then
      vim.cmd("bd!")
    else
    end
  else
    vim.cmd("bd")
  end
end, { desc = "Optons to close the buffer" })

