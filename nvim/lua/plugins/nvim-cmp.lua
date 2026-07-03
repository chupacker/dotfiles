return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saecki/crates.nvim",
		"windwp/nvim-autopairs",
	},
	config = function()
		local cmp = require("cmp")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		require("crates").setup()
		require("nvim-autopairs").setup()

		local ELLIPSIS_CHAR = "…"
		local MAX_LABEL_WIDTH = 20

		cmp.setup({
			formatting = {
				format = function(entry, vim_item)
					local label = vim_item.abbr
					local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
					if truncated_label ~= label then
						vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
					end

					-- CRITICAL FIX: You must return vim_item here!
					return vim_item
				end,
			},
		})

		cmp.setup({
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
				{ name = "nvim_lsp", max_item_count = 15 },
				{ name = "crates", max_item_count = 15 },
			}, {
				-- { name = "buffer", max_item_count = 15 },
				{ name = "path", max_item_count = 15 },
			}),
		})

		-- Auto-insert pairs/brackets when accepting a completion item
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
