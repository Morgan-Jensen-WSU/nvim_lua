-- :help options
local options = {
	backup = false,	-- creates a backup file
	clipboard = "unnamedplus", -- allows nvim to access system clipboard
	completeopt = { "menu", "noselect" }, -- insert mode completion
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- encoding is written to a file
	hlsearch = true, -- highlight all matches on previous search patterns
	ignorecase = false, -- case sensitive search
	mouse = "a", -- allow mouse to be used
	pumheight = 10, -- popup menu height
	showmode = true, -- show what mode you are in
	showtabline = 2, -- always show tabls
	smartindent = true, -- smart indenting
	splitbelow = true, -- all horizontal splits go below
	swapfile = false, -- dont create swap file
	undofile = true, -- persistant undo
	updatetime = 300, -- faster completion (4000ms default)
	writebackup = false, -- cannot be edited while being edited by another program
	expandtab = true, -- tabs to spaces
	shiftwidth = 4, -- number of spaces per indent
	tabstop = 4, -- insert 4 spaces for indent
	number = true, -- line numbers
	relativenumber = true, -- relative numbers
	signcolumn = "yes", -- extra sign column
	wrap = false, -- dont wrap at edge of editor
	scrolloff = 8, -- start scrolling when 8 from the bottom
	sidescrolloff = 8, -- start scrolling when 8 from the right
	guifont = "monospace:h17", -- font used in graphical neovim applications
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]] -- runs vimscript - treats asdf-asdf as one word for editing purposes
