return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			shell = "powershell",
		})

		vim.keymap.set("n", "<space>ft", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
	end,
}
