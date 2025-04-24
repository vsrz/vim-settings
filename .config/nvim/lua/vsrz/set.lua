-- Blocky cursor
vim.opt.guicursor = ""

-- Line number display
vim.opt.number = true
vim.opt.relativenumber = true

-- Spacing
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.laststatus = 2
vim.opt.scrolloff = 5

-- Smart indenting, follow the file format
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Tabs to spaces
vim.opt.expandtab = true

-- Highlight current line
vim.opt.cursorline = true

-- Move to highlight during searching, and highlight immediately (no global highlighting)
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.paste = false
vim.opt.ignorecase = true
vim.opt.encoding = "utf-8"

-- Do not change working folder when editing file
vim.opt.autochdir = false

-- Turn on line wrapping
vim.opt.wrap = true

-- Default to OS clipboard
vim.opt.clipboard = "unnamedplus"

-- No swapfiles or backups; store undo list for use by undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Guifont default
vim.opt.guifont = "0xProto:h10"
