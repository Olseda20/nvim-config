local config = function()
	local theme = require("lualine.themes.gruvbox")

	-- set bg transparency in all modes
	theme.normal.c.bg = nil
	theme.insert.c.bg = nil
	theme.visual.c.bg = nil
	theme.replace.c.bg = nil
	theme.command.c.bg = nil

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true, -- set to true because we want only 1 lualine
		},
		tabline = {
			lualine_a = { "mode", "hostname" },
			-- lualine_b = { "buffers" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },

			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location", "searchcount" },
		},
		sections = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
