-- core/autocmds.lua: autocmd filetype-specific e cursorline

-- Cursorline off in insert
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function() vim.wo.cursorline = false end
})
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function() vim.wo.cursorline = true end
})


