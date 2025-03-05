vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.lines = 40
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.background = 'none'
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('n', '<leader>gb', ':b#<CR>', { silent = true })
