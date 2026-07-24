vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
package.preload["nvconfig"] = function()
	return require("chadrc")
end

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

require("config.lazy")
require("config.remap")
require("config")
require("config.config")

for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
	dofile(vim.g.base46_cache .. v)
end
