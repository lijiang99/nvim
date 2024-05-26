vim.cmd.colorscheme("tokyonight")

vim.o.encoding = "utf-8"
vim.cmd("language en_US")

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.ambiwidth = "single"
vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.cindent = true
-- vim.o.noexpandtab = true
vim.o.showmatch = true
vim.o.wrap = true
-- vim.o.noignorecase = true
vim.o.cursorline = true
vim.o.hidden = true
-- vim.o.noic = true
vim.o.updatetime = 100
vim.o.shortmess = vim.o.shortmess .. "c"

-- vim.o.guicursor = "n-v-c:hor50,i-ci-ve:hor50,r-cr:hor50,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 237 })

local sign_icons = {
	{ sign = "DiagnosticSignError", icon = "✘", },
	{ sign = "DiagnosticSignWarn", icon = "▲", },
	{ sign = "DiagnosticSignHint", icon = "⚑", },
	{ sign = "DiagnosticSignInfo", icon = "»", },
}
for _, item in ipairs(sign_icons) do
	vim.fn.sign_define(item.sign, { text = item.icon, texthl = item.sign })
end
