vim.pack.add({
	'https://github.com/nvim-mini/mini.pairs',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/nvim-mini/mini.pick',
	'https://github.com/j-hui/fidget.nvim',
	'https://github.com/rose-pine/neovim',
	'https://github.com/saecki/crates.nvim',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/catppuccin/nvim',
	'https://github.com/ej-shafran/compile-mode.nvim',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/m00qek/baleia.nvim',
})






require("baleia").setup()
require('mini.pairs').setup()
require('mini.pick').setup()
require('oil').setup()
require('fidget').setup()
require('crates').setup()
require('nvim-treesitter').setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
require("rose-pine").setup({
	styles = {
		transparency = true
	},
})
require("catppuccin").setup({
	flavour = "latte",                -- latte, frappe, macchiato, mocha
	transparent_background = false,   -- disables setting the background color.
})
