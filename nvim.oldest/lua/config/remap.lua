-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>r", ":Compile<CR>")
--
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })


vim.keymap.set('n', 'q', '<Nop>', { noremap = true })

vim.keymap.set("t", "<Escape>", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>cp", ":CompetiTest receive problem<CR>")
vim.keymap.set("n", "<leader>cr", ":CompetiTest run<CR>")

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

vim.keymap.set("n", "<leader>th", function()
	require("nvchad.themes").open()
end, { desc = "NvChad theme switcher" })

vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
	require("menu.utils").delete_old_menus()

	vim.cmd.exec('"normal! \\<RightMouse>"')

	-- clicked buf
	local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
	local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

	require("menu").open(options, { mouse = true })
end, {})

-- LSP
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format file" })

-- -- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })

-- Trouble

vim.keymap.set("n", "<leader>ld", "<cmd>Trouble diagnostics toggle focus=true<cr>", {
	desc = "Diagnostics (Trouble)",
	silent = true,
})
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=true<cr>", {
	desc = "Symbols (Trouble)",
	silent = true,
})

-- File explorer (netrw)
-- vim.keymap.set("n", "<C-n>", "<cmd>Ex<CR>", { desc = "Open netrw" })
vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
