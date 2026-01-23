require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)
vim.api.nvim_exec(
    [[
        autocmd BufNewFile,BufRead *.mdx set filetype=markdown.mdx
    ]],
    false
)
 
vim.api.nvim_exec(
    [[
        autocmd BufNewFile,BufRead *.astro set filetype=astro
    ]],
    false
)
require("lazy").setup({
	require("plugins.colorscheme"),
	require("plugins.bufferline"),
	require("plugins.neotree"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.none-ls"),
	require("plugins.gitsigns"),
	require("plugins.alpha"),
	require("plugins.indent-blankline"),
	require("plugins.misc"),
})
