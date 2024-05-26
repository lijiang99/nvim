return {
	-- tokyonight
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
			keywords = { italic = false },
		},
	},
}
