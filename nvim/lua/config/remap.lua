vim.g.mapleader = ' '

vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<leader>ff', '<cmd>Pick files<cr>')
vim.keymap.set('n', 'q', '<Nop>', { noremap = true })
vim.keymap.set("t", "<Escape>", "<C-\\><C-n>")
