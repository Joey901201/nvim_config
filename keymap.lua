
- navigate splits
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

vim.keymap.set("n", "<leader>x", "<cmd>.lua<CR>")
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")

vim.keymap.set("n", "-", "<cmd>edit %:h<CR>")
