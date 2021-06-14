autocmd filetype netrw nnoremap <buffer> <s-down> :wincmd j<cr>
" autocmd vimEnter * :Vexplore
" autocmd FileType netrw setl bufhidden=delete
autocmd FileType netrw setl bufhidden=wipe

command! Config execute ":e /Users/simon.harvey/.config/nvim/init.vim"
command! Reload execute "source /Users/simon.harvey/.config/nvim/init.vim"

" Python
autocmd FileType python let g:python_host_prog = '/usr/bin/python2'

autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" Jeninsfile as groovy
au BufNewFile,BufRead Jenkinsfile setf groovy
