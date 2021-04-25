
" https://www.vimfromscratch.com/articles/vim-for-ruby-and-rails-in-2019/
" let ale format and fix on save
let g:ale_fixers = {
      \    'ruby': ['standardrb'],
      \}
let g:ale_fix_on_save = 1

let g:ale_lint_on_enter = 0 " don't lint files when opened, this is useful when just looking through stuff

let g:ale_linters = {
    \ 'sh': ['language_server'],
    \ }

" shows the total number of warnings and errors in the status line
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'all good' : printf(
        \   '%dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
