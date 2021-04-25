" scriptencoding utf-8

set runtimepath-=~/.config/nvim
set runtimepath-=~/.config/nvim/after
set runtimepath-=~/.local/share/nvim/site
set runtimepath-=~/.local/share/nvim/site/after

set runtimepath+=~/.config/nvim-nightly/after
set runtimepath^=~/.config/nvim-nightly
set runtimepath+=~/.local/share/nvim-nightly/site/after
set runtimepath^=~/.local/share/nvim-nightly/site

call plug#begin()
" vim games
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
" Plug 'wikitopian/hardmode'

" 	Language Tools
Plug 'tpope/vim-endwise'
Plug 'rodjek/vim-puppet'
Plug 'vim-ruby/vim-ruby'
Plug 'mrk21/yaml-vim'
Plug 'reedes/vim-lexical' " Building on Vimâ€™s spell-check and thesaurus/dictionary completion
Plug 'dpelle/vim-LanguageTool' " download latest snaphots from https://internal1.languagetool.org/snapshots/
Plug 'ekalinin/Dockerfile.vim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'nvim-lua/lsp-status.nvim'

 " Terraform
Plug 'juliosueiras/vim-terraform-completion'
Plug 'hashivim/vim-terraform'

" Go Specific Plugins
Plug 'fatih/vim-go',          { 'do': ':GoUpdateBinaries' }
Plug 'godoctor/godoctor.vim'  " Go refactoring tools
Plug 'jodosha/vim-godebug'    " Debugger integration via delve

" 	Code Editing/Formatting Tools
Plug 'tpope/vim-commentary'    " comment code
Plug 'tpope/vim-surround'      " surrounding text in quotes, brackets, tags, etc
Plug 'wellle/tmux-complete.vim'
Plug 'junegunn/vim-easy-align' " using tabular instead at the moment
Plug 'jiangmiao/auto-pairs'    " auto closes brackets
Plug 'honza/vim-snippets'

" IDE Theme/Colorschemes
" Plug 'arcticicestudio/nord-vim',     { 'as': 'nord' }
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'

"	Search & Navigation Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"	Git Pluging
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'APZelos/blamer.nvim'

" Vim tools
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'dylanaraps/fff.vim'
Plug 'bling/vim-airline'

call plug#end()

source ~/.config/nvim-nightly/config/base.vim
source ~/.config/nvim-nightly/config/keybindings.vim
source ~/.config/nvim-nightly/config/spellchecker.vim
source ~/.config/nvim-nightly/config/general-language.vim
source ~/.config/nvim-nightly/config/git.vim
source ~/.config/nvim-nightly/config/netrw.vim
source ~/.config/nvim-nightly/config/autocmds.vim
source ~/.config/nvim-nightly/config/LanguageClient-neovim.vim
source ~/.config/nvim-nightly/config/which-key.vim
source ~/.config/nvim-nightly/config/vim-ruby.vim
source ~/.config/nvim-nightly/config/blamer.vim
source ~/.config/nvim-nightly/config/coc.vim
source ~/.config/nvim-nightly/config/floaterm.vim
source ~/.config/nvim-nightly/config/easy-align.vim
