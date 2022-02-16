local opts = { noremap = true, silent = true } 

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- set space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal = "n"
-- insert = "i"
-- visual = "v"
-- visual block = "x"
-- term = "t"
-- command = "c"

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- Ctrl + h = Move Left
keymap("n", "<C-j>", "<C-w>j", opts) -- Ctrl + j = Move Down
keymap("n", "<C-k>", "<C-w>k", opts) -- Ctrl + k = Move Up
keymap("n", "<C-l>", "<C-w>l", opts) -- Ctrl + l = Move Right

-- File navigation
keymap("n", "<leader>e", ":Lex 20<cr>", opts) -- opens Lexplore with size 20

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- keep what you have in clipboard when pasting over something
-- instead of grabbing what you replaced
keymap("v", "p", '"_dP', opts)

