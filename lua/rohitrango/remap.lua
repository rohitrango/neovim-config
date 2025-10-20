vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.guicursor = ""
vim.o.termguicolors = true      -- enable true color
vim.o.background = "dark"

-- took this from primagen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- to debug LSP diagnostics later, im not using <leader>q for anything else anyway
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('c', "%%", function()
	return vim.fn.expand("%:h") .. "/"
end, {expr = true, desc = "Expand to current file path"})

-- will experiment with some of it
-- vim.g.have_nerd_font = true

-- who doesn't need linenumbers?
vim.o.number = true
vim.o.ruler = true
vim.o.showmode = false

-- I use this for <num>j type commands regularly
vim.o.relativenumber = true

vim.o.mouse = 'a'

-- use leader Y to yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

-- use `st` to open a terminal at that location (rarer)
vim.keymap.set("n", "<leader>sT", function()
    local file_dir = vim.fn.expand("%:p:h")
    local height = math.floor(vim.o.lines * 0.2)
    vim.cmd.vnew()
    vim.cmd("lcd " .. file_dir)
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, height)
end)

-- use `st` to open a terminal normally at root
vim.keymap.set("n", "<leader>st", function()
    local height = math.floor(vim.o.lines * 0.2)
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, height)
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartindent = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
-- vim.o.timeoutlen = 300

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

vim.opt.tabstop = 4       -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4    -- number of spaces used for autoindent
vim.opt.expandtab = true  -- convert tabs to spaces

-- convenience mappings (keep cursor in the middle when scrolling)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- moving code up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

