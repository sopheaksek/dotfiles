return {
	--	"ellisonleao/gruvbox.nvim",
	--	priority = 1000,
	--	config = function()
	--		require("gruvbox").setup({})
	--		vim.o.background = "dark"
	--		vim.cmd([[colorscheme gruvbox]])
	--	end,
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({})
			vim.o.background = "dark"
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
