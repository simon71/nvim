" call which_key#register('<Space>', "g:which_key_map")
"
" nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
" vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :silent <c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :silent <c-u>silent WhichKeyVisual '<Space>'<CR>

set timeoutlen=500


let g:which_key_vertical = 0
let g:which_key_position = 'botright'
" let g:which_key_hspace = 10
let g:which_key_use_floating_win = 0

let g:which_key_map =  {}

map <silent><leader>w :w<CR>
let g:which_key_map['w'] = [ ':w'       , 'lazy save' ]
map <silent><leader>q :q<CR>
let g:which_key_map['q'] = [ ':q'       , 'lazy quit' ]
map <silent><leader>Q :q!<CR>
let g:which_key_map['Q'] = [ ':q!'      , 'force quit' ]
let g:which_key_map['m'] = [ ':MarkdownPreview', 'MarkdownPreview' ]
let g:which_key_map['z'] = [ '1z=', 'correct spell' ]

let g:which_key_map.g ={
      \ 'name' : '+go',
      \ 'G' : [ ':!go run --gcflags "-m=2" %', 'go run verbose' ],
      \ 'g' : [ ':!go run % ', 'go run' ],
      \ 'f' : [ ':!go test', 'go test' ],
      \}

let g:which_key_map.n ={
      \ 'name' : '+notebooks',
      \ 's' : [':FloatermNew --wintype=floating --autoclose=2 nvim ~/NOTEBOOKS/sys_admin_notebook.md', 'sys_admin_notebook'],
      \ 'v' : [':FloatermNew --wintype=floating --autoclose=2 nvim ~/NOTEBOOKS/vim_notebook.md', 'vim_notebook'],
      \ 't' : [':FloatermNew --wintype=floating --autoclose=2 nvim ~/NOTEBOOKS/tmux_notebook.md', 'tmux_notebook'],
      \ 'r' : [':FloatermNew --wintype=floating --autoclose=2 nvim ~/NOTEBOOKS/ruby_notebook.md', 'ruby_notebook'],
      \}

let g:which_key_map.t ={
      \ 'name' : '+terminal',
      \ 't' : [':FloatermNew --wintype=normal --height=3' , 'terminal'],
      \ 'g' : [':FloatermNew lazygit' , 'git' ],
      \ 'f' : [':FloatermNew fzf' , 'fzf' ],
      \ 'l' : [':FloatermNew fff' , 'fff' ],
      \ 'm' : [':FloatermNew --wintype=floating --autoclose=2 gotop -C ~/.config/gotop/gotop.conf', 'gotop'],
      \}

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator Identifier
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier


autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=3 showmode ruler
