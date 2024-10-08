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

require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.colortheme"),
	require("plugins.discord_rpc"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.cmp"),
	require("plugins.mason"),
	require("plugins.lspconfig"),
	require("plugins.autoformatting"),
	require("plugins.linting"),
	require("plugins.gitsigns"),
	require("plugins.lazygit"),
	require("plugins.wakatime"),
	require("plugins.toggleterminal"),
	require("plugins.null-ls"),
	require("plugins.autopairs"),
	require("plugins.autotag"),
	require("plugins.copilot"),
})

require("nvim-treesitter.install").compilers = { "zig" }
