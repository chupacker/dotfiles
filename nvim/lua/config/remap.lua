vim.g.mapleader = " "
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<C-w>v", "<C-w>v<C-w>l", { desc = "Split vertical and focus" })
vim.keymap.set("n", "<C-w>s", "<C-w>s<C-w>j", { desc = "Split horizontal and focus" })
vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>Oil<cr>")
vim.keymap.set("n", "q", "<Nop>", { noremap = true })
vim.keymap.set("t", "<Escape>", "<C-\\><C-n>")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set({ "n", "t" }, "<A-x>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

vim.keymap.set("n", "<leader>th", function()
	require("nvchad.themes").open()
end, { desc = "NvChad theme switcher" })
