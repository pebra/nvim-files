if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " text editing
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')

  " language server
  call dein#add('dense-analysis/ale')
  call dein#add('autozimu/LanguageClient-neovim', {
        \ 'build': 'bash install.sh', 
        \ 'rev': 'next',
        \ })

  " file and project handling
  call dein#add('preservim/nerdtree')
  call dein#add('junegunn/fzf', {
        \ 'build': './install --bin'
        \})
  call dein#add('junegunn/fzf.vim')
  
  " graphql
  call dein#add('jparise/vim-graphql')

  " rails 
  call dein#add('tpope/vim-rails')

  " colorschemes
  call dein#add('arcticicestudio/nord-vim')

  call dein#end()
  call dein#save_state()
endif

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
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}


set hidden

let g:ale_linters = {
      \   'ruby': ['rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
" language server configuration
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['/home/pebra/.asdf/shims/solargraph', 'stdio'],
    \ }

" maps leader to space inspired by spacemacs/doom-emacs/spacevim
let g:mapleader = ' '

" browse your project files super fast and fuzzy
nnoremap <leader>pf :Files<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" colors
colorscheme nord
