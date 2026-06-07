vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.splitbelow = true
vim.o.termguicolors = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.autoread = true
vim.o.winborder = "rounded"

---@module "compile-mode"
---@type CompileModeOpts
vim.g.compile_mode = {
    default_command = "",
    baleia_setup = true,
    bang_expansion = true,
    use_diagnostics = false,
    recompile_no_fail = true,
    ask_about_save = true,
    ask_to_interrupt = true,
    buffer_name = "*compilation*",
    time_format = "%a %b %e %H:%M:%S",
    hidden_output = {},
    environment = nil,
    clear_environment = false,
    input_word_completion = true,
    focus_compilation_buffer = true,
    auto_scroll = true,
    use_pseudo_terminal = true,
}

vim.cmd.colorscheme("catppuccin-nvim")
