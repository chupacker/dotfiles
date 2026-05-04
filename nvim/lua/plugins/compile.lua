return {
	"DaneX3089/compile.nvim",
	-- This event makes sure the plugin loads lazily. You can
	-- use any event you like, such as `ft` for file types or `autocmds`.
	event = "VeryLazy",
	-- don't forget the options table!
	opts = {
		-- Give your terminal a custom name.
		term_win_name = "CompileTerm",
		---@type vim.api.keyset.win_config
		term_win_opts = {
			-- The split direction for the terminal window. "below" places it at the bottom.
			split = "below",
			-- The height of the terminal window as a percentage (0.4 = 40%).
			-- Any number >= 1 will use that amount of lines as height
			height = 0.4,
			-- width = 0.8, -- the same applied for width
			-- Or you can make it float, adding borders, etc. check :h win_config
		},

		---@type vim.api.keyset.win_config
		normal_win_opts = {
			-- The split direction for the normal window. "above" places it at the top.
			split = "above",
			-- similar to term_win_opts
			height = 0.6,
		},

		---@type boolean
		-- Set this to `true` if you want to jump into the terminal when you run compile command
		enter = true,

		highlight_under_cursor = {
			-- Enable or disable highlighting the error under your cursor. It’s a great visual cue!
			enabled = true,
			-- The timeout in milliseconds for the highlight to appear in the terminal.
			timeout_term = 500,
			-- The timeout in milliseconds for the highlight in a normal buffer.
			timeout_normal = 200,
		},

		cmds = {
			-- The default command to run when you compile. Change this if you use a different build tool!
			-- I will make it possible to have dynamic default for each project types soon~
			default = "",
		},

		colors = {
			-- Customize the highlight colors for different parts of the error message.
			-- These correspond to Neovim highlight groups.
			file = "WarningMsg",
			row = "CursorLineNr",
			col = "CursorLineNr",
		},

		keys = {
			-- Here's where you define all the handy keybindings!
			global = {
				-- Normal mode keybindings, you can group modes by writing them next to each other
				-- eg: ["nvi"] for normal, select and insert mode keybinding
				["n"] = {
					-- start compile/recompile, will also open the terminal
					["<leader>cm"] = "require('compile').compile()",
					-- jump to terminal buffer
					["<leader>cj"] = "require('compile').term.jump_to()",
				},
			},
			term = {
				global = {
					["n"] = {
						-- quits the terminal buffer.
						["<leader>cq"] = "require('compile').destroy()",
					},
				},
				-- This one will only work INSIDE the terminal buffer
				buffer = {
					["n"] = {
						["r"] = "require('compile').clear()",
						["c"] = "require('compile').compile()",
						-- quit the terminal.
						["q"] = "require('compile').destroy()",
						["n"] = "require('compile').next_error()",
						["p"] = "require('compile').prev_error()",
						["0"] = "require('compile').first_error()",
						["$"] = "require('compile').last_error()",
						-- Jump to the nearest error under or before your cursor
						["<Cr>"] = "require('compile').nearest_error()",
					},
					-- Tricks to clear warning/error list
					["t"] = {
						-- Press `<CR>` in terminal mode to send a command and clear highlights.
						["<CR>"] = "require('compile').clear_hl()",
						-- This sends the command to the terminal without clearing the error list!
						["<C-j>"] = "require('compile.term').send_cmd('')",
					},
				},
			},
		},
	},
}
