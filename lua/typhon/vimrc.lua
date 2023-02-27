local set = vim.opt 

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


set.syntax = "on"           --syntax highlighting
set.cursorline = true       --highlights current line
set.lazyredraw = true       --redraw screen only when necessary
set.number = true           --number lines 
set.relativenumber = true   --shows number relative to current line
set.autoindent = true       --applies indentation from current line to next line with <Enter>
set.showmatch = true        --highlights matching ()[]''""
set.wildmenu = true         --vim command line completion with <Tab>
set.expandtab = true        --inserts space characters for tabs
set.shiftwidth = 4          --number of space characters used for indentation
--set.softtabstop = 4         
set.tabstop = 4             --makes backspace key treat four spaces like a tab
set.ignorecase = true       --case insensitive search
set.hlsearch = true         --highlight search results
set.incsearch = true        --incrementally highlight search results
set.scrolloff = 10          --maintain 10 lines above cursor when scrolling top/bottom
set.sidescrolloff = 10      --maintain 10 lines above cursor when scrolling side to side
set.wrap = false            --no line wrapping
set.clipboard = "unnamedplus"

nmap("<leader><space>", ":nohlsearch<CR>")
nmap("<C-T> ", ":botright terminal<CR>")
nmap("<leader>n", ":NvimTreeFocus<CR>")
nmap("<leader><Tab>", ":NvimTreeFindFileToggle<CR>")
nmap("<C-u>", ":tabprevious<CR>")
nmap("<C-i>", ":tabnext<CR>")
