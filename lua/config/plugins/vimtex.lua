return {
	"lervag/vimtex",
	init = function()
		vim.g.tex_flavor = "latex"
		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_quickfix_mode = 0
		vim.g.vimtex_compiler_latexmk_engines = { _ = "-pdflatex" }
		vim.g.vimtex_compiler_latexrun_engines = { _ = "-pdflatex" }
		vim.g.vimtex_compiler_latexmk = {
			executable = "latexmk",
			options = {
				"-pdflatex",
				"-file-line-error",
				"-synctex=1",
				"-interaction=nonstopmode",
				"-shell-escape",
			},
		}
	end
}
