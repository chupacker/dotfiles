vim.g.mapleader = " "
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<C-w>v", "<C-w>v<C-w>l", { desc = "Split vertical and focus" })
vim.keymap.set("n", "<C-w>s", "<C-w>s<C-w>j", { desc = "Split horizontal and focus" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>Oil<cr>")
vim.keymap.set("n", "q", "<Nop>", { noremap = true })

vim.keymap.set({ "n", "t" }, "<A-x>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

vim.keymap.set("t", "<Escape>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>th", function()
	require("nvchad.themes").open()
end, { desc = "NvChad theme switcher" })
