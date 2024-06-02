local compile_file = function()
	vim.cmd("w")
	local file_type = vim.bo.filetype
	if file_type == "tex" then
		vim.cmd(":VimtexStop")
		vim.cmd(":VimtexCompile")
	end
end

local clean_file = function()
	vim.cmd("w")
	local file_type = vim.bo.filetype
	if file_type == "tex" then
		vim.cmd(":VimtexStop")
		vim.cmd(":VimtexClean")
	end
end

vim.keymap.set("n", "<leader>r", compile_file, { silent = true })
vim.keymap.set("n", "<leader>c", clean_file, { silent = true })
