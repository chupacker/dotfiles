vim.env.PATH = vim.fn.stdpath('data') .. '\\mason\\bin;' .. vim.env.PATH

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    -- This attempts to start treesitter for the current buffer
    pcall(vim.treesitter.start)
  end,
})

if vim.g.neovide then
	-- vim.o.guifont = "Iosevka NF:h14"
	vim.o.guifont = "JetBrainsMono NF:h14"
end

vim.opt.shell = "C:\\Windows\\System32\\cmd.exe"
vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.winborder = "single"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.splitbelow = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.autoread = true
vim.o.showmode = false
