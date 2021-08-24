" Colours and Theme {{{
" set background=dark
" colorscheme gruvbox
" colorscheme atom-dark-256
set background=dark
""}}}

" Basic Settings {{{
set nocompatible
set showmatch                  " show matching parenthesis
filetype on
filetype indent on
filetype plugin on
set ttyfast
set laststatus=1
set encoding=utf-8             " Set default encoding to UTF-8
set autoread                   " Automatically reread changed files without asking me anything
set autoindent
set backspace=indent,eol,start " Makes backspace key more powerful.
set incsearch                  " Shows the match while typing
set hlsearch
set syntax=on                  " Enable syntax highlighting
set hidden
set autochdir
set visualbell
set number
set nobackup
set noswapfile
set noshowmode
set number relativenumber
set scrolloff=10
set clipboard=unnamed
set path+=**
set wildmenu                  " Display all matching files when we use tab complete
" Enable incremental search, so we what we are matching as we are typing!
set incsearch
set complete+=k
set spell
" Enable 256 color
set t_Co=256
set t_ut=
" }}}

" mouse
set mouse=a
let g:is_mouse_enabled = 1

" Default to magic when using substitutions {{{
cnoremap %s/ %s/\v
cnoremap \>s/ \>s/\v
"}}}

" {{{
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" }}}

" Global tab width. {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"}}}

" Set global fold method {{{
set foldmethod=syntax 
" }}}

 " Set to show tabs & trailing whitespace {{{
set list listchars=tab:.\ ,trail:.
"}}}

" Random Colours plugin {{{
let g:random_scheme = 1
let g:airline_integration = 1
let g:colorscheme_airline_correlation = 1
let g:available_colorschemes = ['atom-dark-256', 'atom-dark', 'molokai', 'biogoo', 'cobalt2', 'deus', 'distinguished', 'gruvbox', 'hybrid', 'minimalist', 'monochrome', 'ubaryd', 'understated', 'wombat', 'zenburn']
let g:available_airline_themes = ['atom-dark-256', 'atom-dark', 'molokai', 'biogoo', 'cobalt2', 'deus', 'distinguished', 'gruvbox', 'hybrid', 'minimalist', 'monochrome', 'ubaryd', 'understated', 'wombat', 'zenburn']
" }}}

" Vim rooter {{{
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_silent_chdir = 1
"}}}

let g:python3_host_prog = "/Users/simon.harvey/.pyenv/versions/neovim3/bin/python"

let g:ale_sh_shellcheck_options = '-x'

" use TAB to move to next buffer and Shift TAB to move to previous buffer 
" nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
" nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
