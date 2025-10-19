vim.g.mapleader = " " 
vim.g.maplocalleader = " "

-- took this from primagen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- to debug LSP diagnostics later, im not using <leader>q for anything else anyway
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('c', "%%", function()
	return vim.fn.expand("%:h") .. "/"
end, {expr = true, desc = "Expand to current file path"})

-- will experiment with some of it
vim.g.have_nerd_font = true  

-- who doesn't need linenumbers?
vim.o.number = true 
vim.o.ruler = true
vim.o.showmode = false

-- I use this for <num>j type commands regularly
vim.o.relativenumber = true 

vim.o.mouse = 'a'


-- need this quite a lot!
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- useful to visualize trailing spaces and tabs
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- better than throwing an error
vim.o.confirm = true


