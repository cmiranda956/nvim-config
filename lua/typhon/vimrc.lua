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
local set = vim.opt 

set.syntax = "on"
set.cursorline = true
set.lazyredraw = true
set.number = true
set.relativenumber = true
set.autoindent = true
set.showmatch = true
set.wildmenu = true
set.expandtab = true
set.shiftwidth = 4
set.softtabstop = 4
set.tabstop = 4
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.scrolloff = 10
set.sidescrolloff = 10

nmap("<leader><space>", ":nohlsearch<CR>")
nmap("<C-T> ", ":botright terminal<CR>")
nmap("<leader>n", ":NvimTreeFocus<CR>")
nmap("<leader><Tab>", ":NvimTreeToggle<CR>")
nmap("<C-u>", ":tabprevious<CR>")
nmap("<C-i>", ":tabnext<CR>")
