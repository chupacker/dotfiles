return {
	"saghen/blink.cmp",
	version = "1.*",
	event = { "InsertEnter", "CmdLineEnter" },
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"L3MON4D3/LuaSnip",
			dependencies = "rafamadriz/friendly-snippets",
			opts = { history = true, updateevents = "TextChanged,TextChangedI" },
			config = function(_, opts)
				require("luasnip").config.set_config(opts)
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		{
			"windwp/nvim-autopairs",
			opts = {
				fast_wrap = {},
				disable_filetype = { "TelescopePrompt", "vim" },
			},
		},
	},
	opts_extend = { "sources.default" },
	opts = {
		snippets = { preset = "luasnip" },
		cmdline = { enabled = true },
		appearance = { nerd_font_variant = "normal" },
		fuzzy = { implementation = "prefer_rust" },
		sources = { default = { "lsp", "snippets", "buffer", "path" } },
		keymap = {
			preset = "default",
			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		},
		completion = {
			list = {
				selection = { preselect = false, auto_insert = false },
			},

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 50,
				window = { border = "single" },
			},
			menu = {
				auto_show = true,
				scrollbar = false,
				border = "single",
				draw = {
					padding = { 1, 1 },
					columns = { { "label" }, { "kind_icon" }, { "kind" } },
				},
			},
		},
	},
}

