-- local language_servers = {
-- 	"clangd", "cmake", "texlab",
-- 	"lua_ls", "pyright",
-- }
--
-- return {
-- 	{
-- 		"williamboman/mason.nvim",
-- 		config = function()
-- 			require("mason").setup({
-- 				ui = {
-- 					icons = {
-- 						package_installed = "✓",
-- 						package_pending = "➜",
-- 						package_uninstalled = "✗",
-- 					},
-- 				},
-- 			})
-- 		end
-- 	},
-- 	{
-- 		"williamboman/mason-lspconfig.nvim",
-- 		config = function()
-- 			require("mason-lspconfig").setup({
-- 				ensure_installed = language_servers,
-- 			})
-- 		end
-- 	},
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		config = function()
-- 			local lspconfig = require("lspconfig")
-- 			for _, server in ipairs(language_servers) do
-- 				if server == "clangd" then
-- 					lspconfig[server].setup({
-- 						init_options = { fallbackFlags = { "--std=c++20" }, },
-- 					})
-- 				elseif server == "lua_ls" then
-- 					lspconfig[server].setup({
-- 						settings = { Lua = { diagnostics = { globals = {"vim"}, }, }, },
-- 					})
-- 				else
-- 					lspconfig[server].setup({})
-- 				end
-- 			end
-- 		end
-- 	},
-- }

return {
	{
		"windwp/nvim-autopairs",
		lazy = false,
		config = function()
			require("nvim-autopairs").setup {}
		end
	},
}
