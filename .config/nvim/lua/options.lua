local g = vim.g
local opt = vim.opt

-- Global
g.mapleader = " "
g.maplocalleader = " "

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Vim
vim.cmd("set path+=**")

-- General
opt.title = true
opt.mouse = "a"
opt.swapfile = false
opt.completeopt = "menuone,noinsert,noselect"
opt.scrolloff = 10
opt.inccommand = "split"
opt.fileencoding = "utf-8"
opt.splitright = true
opt.splitbelow = true

-- Neovim UI
opt.number = true
opt.showmatch = true
opt.colorcolumn = "120"
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.wrap = false
opt.signcolumn = "auto:1-2"
opt.hlsearch = true
opt.incsearch = true
opt.pumheight = 10
opt.showtabline = 2
opt.laststatus = 2
opt.cmdheight = 1 
opt.showcmd = true
opt.showmode = true

-- Tabs, indent
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- Memory, CPU
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.updatetime = 250
opt.undofile = true
opt.backup = false
opt.redrawtime = 10000

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
