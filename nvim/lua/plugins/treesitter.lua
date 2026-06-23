return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "go", "lua", "vim", "vimdoc", "query" },
    highlight = { enable = true },
  },
}
