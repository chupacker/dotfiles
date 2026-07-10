return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saecki/crates.nvim",
		"windwp/nvim-autopairs",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		require("crates").setup()
		require("nvim-autopairs").setup()

		local source_mapping = {
			nvim_lsp = "[LSP]",
			crates   = "[Crates]",
			path     = "[Path]",
			buffer   = "[Buffer]",
		}

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered({ border = "none" }),
				documentation = cmp.config.window.bordered({ border = "none" }),
			},
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 30,
					ellipsis_char = "…",
					menu = source_mapping,
				}),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp", max_item_count = 10 },
				{ name = "crates",   max_item_count = 10 },
			}, {
				{ name = "path", max_item_count = 10 },
			}),
		})

		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
