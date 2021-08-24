" CoC configuration
" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" this is for the jump to definition plugin
" 
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
