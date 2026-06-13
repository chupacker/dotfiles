vim.pack.add({
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/vague-theme/vague.nvim',
	'https://github.com/windwp/nvim-autopairs',
	'https://github.com/nvim-mini/mini.pick',
	'https://github.com/j-hui/fidget.nvim',
	'https://github.com/rose-pine/neovim',
	'https://github.com/saecki/crates.nvim',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/catppuccin/nvim',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/m00qek/baleia.nvim',
	'https://github.com/hrsh7th/nvim-cmp',
	'https://github.com/hrsh7th/cmp-nvim-lsp',
	'https://github.com/hrsh7th/cmp-buffer',
	'https://github.com/hrsh7th/cmp-path',
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

local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-p>'] = cmp.mapping.select_prev_item(),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'crates' },
	}, {
		{ name = 'buffer' },
		{ name = 'path' },
	}),
	window = {
		completion = cmp.config.window.bordered({ border = 'rounded' }),
		documentation = cmp.config.window.bordered({ border = 'rounded' }),
	},
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

require("rose-pine").setup({
	styles = {
		transparency = true
	},
})
require('vague').setup({
	transparent = true,
	-- on_highlights = function(hl, colors) end,
})
