return {
	"ellisonleao/gruvbox.nvim",
	lazy = false, -- so that it's always loaded up
	priority = 9999,
	config = function()
		vim.cmd("colorscheme gruvbox")
	end,
}
