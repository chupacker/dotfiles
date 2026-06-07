vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

vim.lsp.config("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			check = {
				command = "clippy",         -- Optional: this makes it use clippy for diagnostics
			},
			-- This enables formatting via rust-analyzer
			rustfmt = {
				enable = true,
			},
		},
	},
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("glsl_analyzer")
vim.lsp.enable("rust_analyzer")
