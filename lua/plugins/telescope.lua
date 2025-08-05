return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "BufReadPre",
  config = function()
    require("telescope").setup{}

    local tele = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ff", tele.find_files,  { desc = "Telescope Find Files" })
    vim.keymap.set("n", "<leader>fg", tele.live_grep,   { desc = "Telescope Live Grep" })
    vim.keymap.set("n", "<leader>fb", tele.buffers,     { desc = "Telescope Buffers" })
    vim.keymap.set("n", "<leader>fh", tele.help_tags,   { desc = "Telescope Help" })
  end,
}

