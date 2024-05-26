vim.g.mapleader = ";"

local nmappings = {
	{ from = "<leader>tt", to = ":NvimTreeToggle<cr>", },
	{ from = "<leader>ff", to = ":Telescope find_files<cr>", },
	{ from = "<leader>fg", to = ":Telescope live_grep<cr>", },
	{ from = "<leader>fb", to = ":Telescope buffers<cr>", },
	{ from = "<leader>fh", to = ":Telescope help_tags<cr>", },
}

for _, mapping in ipairs(nmappings) do
	vim.keymap.set("n", mapping.from, mapping.to)
end
