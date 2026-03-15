local map = vim.keymap.set

map("n", "<C-f>", ":FZF<CR>", { silent = true })
map("n", "<C-g>", ":Rg<CR>", { silent = true })
