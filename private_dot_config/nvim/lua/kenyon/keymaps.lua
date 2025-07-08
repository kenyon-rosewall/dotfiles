vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("i", "jj", "<C-c>")
-- vim.keymap.set("n", "<C-space>", ":", { noremap = true })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>x<CR>")
vim.keymap.set("v", "<C-y>", '"+y')

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>")
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<CR>")
vim.keymap.set("n", "<leader>ls", "<cmd>Lazy sync<CR>")
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy clean<CR>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
