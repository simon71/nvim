vim.g.mapleader = ' '

local settings = {

	--file handling
	autoread     = true,              --Automatically reread changed files without asking me anything
	backup       = false,
	swapfile     = false,
	fileencoding = "utf-8",           --Set default encoding to UTF-8

	--editing
	autoindent   = true,
	backspace    = "indent,eol,start",--Makes backspace key more powerful.
	tabstop      = 4,
	shiftwidth   = 4,
	spelllang    = "en_gb",

	--ide
	showmatchp   = true,              --show matching parenthesis
	visualbell   = true,
	number       = true,
	showmode     = false,
	scrolloff    = 10,
	clipboard    = "unnamed",
	wildmenu     = true,              --Display all matching files when we use tab complete
	spell        = false,
	signcolumn   = "yes",
	mouse        = "a",
	wrap         = false,
	timeoutlen   = 500,


	--search
	incsearch    = true,              --Shows the match while typing
	hlsearch     = true,

	--status line
	laststatus   = 2,
}

--for k, v in pairs(settings) do
--	vim.opt[k] = v
--end

-- opt.path:append({ "**" })
vim.cmd([[set path=$PWD/**]])

-- opt.relativenumber = true
vim.cmd([[set number]])
vim.cmd([[set relativenumber]])

-- show whitespace
vim.cmd([[set listchars=eol:~,tab:<->,trail:$,extends:>,precedes:<]])
vim.cmd([[set list]])

vim.cmd([[set complete+=k]])

vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('filetype on')
vim.cmd('syntax on')
