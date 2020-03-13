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

  " git & github
  call dein#add('tpope/vim-fugitive')
  call dein#add('ruanyl/vim-gh-line')

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
  call dein#add('NLKNguyen/papercolor-theme')

  call dein#end()
  call dein#save_state()
endif

colorscheme nord

" partials 
source ~/.config/nvim/config/base.vim
source ~/.config/nvim/config/mappings.vim
