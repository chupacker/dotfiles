vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
package.preload["nvconfig"] = function()
	return require("chadrc")
end

require("config.lazy")
require("config.remap")
require("config.config")

for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
	dofile(vim.g.base46_cache .. v)
end

require("trouble").setup()
require("compile").setup()
require("nvim-treesitter").setup()
require("lsp_signature").setup()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
	},

})
require("blink.cmp").setup({
	signature = { enabled = true },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})

vim.opt.splitbelow = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.undofile = true

vim.g.netrw_banner = 0

vim.opt.showmode = false
vim.g.have_nerd_font = true

vim.opt.swapfile = false
vim.opt.winborder = "none"
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.winblend = 0
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.cmd("filetype indent off")
