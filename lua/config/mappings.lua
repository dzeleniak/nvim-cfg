vim.g.mapleader = " "
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic" })
