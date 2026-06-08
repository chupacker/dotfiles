vim.pack.add({
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/vague-theme/vague.nvim',
	'https://github.com/windwp/nvim-autopairs',
	'https://github.com/saghen/blink.lib',
	'https://github.com/saghen/blink.cmp',
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





require("nvim-autopairs").setup()
require("baleia").setup()
require('mini.pick').setup()
require('oil').setup()
require('fidget').setup()
require('crates').setup()
require('nvim-treesitter.config').setup({
    ensure_installed = { "go", "lua", "vim", "vimdoc", "query" }, 
    sync_install = false,
    auto_install = true, 
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})

require("blink.cmp").setup({
	    completion = { 
				menu = { border = 'rounded' },
				documentation = { auto_show = false } 
			},
})
require("rose-pine").setup({
	styles = {
		transparency = true
	},
})
require('vague').setup({
  transparent = true, -- If true, background is not set
  on_highlights = function(hl, colors) end,
})
