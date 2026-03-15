local opt = vim.opt

opt.ignorecase = true
opt.mouse = "a"
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.autoindent = true
opt.number = true
opt.wildmode = "longest,list"
opt.clipboard = "unnamedplus"
opt.ttyfast = true
opt.swapfile = false
opt.wrap = false
vim.opt.termguicolors = true

vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
]])
