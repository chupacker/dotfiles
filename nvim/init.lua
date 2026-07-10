vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

require("config.lazy")
require("config.remap")
require("config")
require("config.config")
