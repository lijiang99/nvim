return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	priority = 1000,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c", "cpp", "cmake", "latex",
				"lua", "python", "bash",
				"vim", "vimdoc", "query",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
