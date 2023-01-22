vim.g.mapleader = "\\"

function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
	map('n', shortcut, command)
end

function imap(shortcut, command)
	map('i', shortcut, command)
end

vim.opt.syntax = "on"
vim.opt.cursorline = true
vim.opt.lazyredraw = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.wildmenu = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

nmap("<leader><space>", ":nohlsearch<CR>")
nmap("<C-T> ", ":botright terminal<CR>")
nmap("<leader>n", ":NvimTreeFocus<CR>")
nmap("<leader><Tab>", ":NvimTreeToggle<CR>")
nmap("<C-u>", ":tabprevious<CR>")
nmap("<C-i>", ":tabnext<CR>")
