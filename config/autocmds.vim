autocmd filetype netrw nnoremap <buffer> <s-down> :wincmd j<cr>
" autocmd vimEnter * :Vexplore
" autocmd FileType netrw setl bufhidden=delete
autocmd FileType netrw setl bufhidden=wipe

command! Config execute ":e /Users/simon.harvey/.config/nvim/init.vim"
command! Reload execute "source /Users/simon.harvey/.config/nvim/init.vim"

" Python
autocmd FileType python let g:python_host_prog = '/usr/bin/python2'
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})


" Program specific indenting
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2


autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" Jeninsfile as groovy
autocmd BufNewFile,BufRead Jenkinsfile set ft=groovy
autocmd BufNewFile,BufRead Jenkinsfile* setf groovy
