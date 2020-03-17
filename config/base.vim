set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style
set hidden
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" ale
let g:ale_linters = {
      \   'ruby': ['rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
" language server configuration
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['/home/pebra/.asdf/shims/solargraph', 'stdio'],
    \ }

" github vim-gh-line config
let g:gh_line_map = '<leader>ghl'
let g:gh_line_blame_map = '<leader>ghb'
let g:gh_open_command = 'open ' " the whitespace here is important
let g:gh_use_canonical = 1
" copy github link to clipboard instead of opening the browser
" let g:gh_open_command = 'fn() { echo "$@" | pbcopy; }; fn '

" airline
let g:airline_theme = 'nord'
