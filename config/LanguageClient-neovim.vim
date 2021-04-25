" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['/Users/simon.harvey/.rvm/gems/ruby-2.4.3/bin/solargraph', 'stdio'],
    \ 'go': ['gopls'],
    \ 'terraform': ['terraform-ls', 'serve'],
    \ 'sh': ['bash-language-server', 'start'],
    \ }

" Launch gopls when Go files are in use
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
