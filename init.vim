set nocompatible

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
  call dein#add('tpope/vim-sleuth')

  " git & github
  call dein#add('tpope/vim-fugitive')
  call dein#add('ruanyl/vim-gh-line')

  " language server
  call dein#add('dense-analysis/ale')

  " file and project handling
  call dein#add('preservim/nerdtree')
  call dein#add('junegunn/fzf', {
        \ 'build': './install --bin',
        \ 'dir': '~/.cache/dein/repos/github.com/junegunn/fzf'
        \})
  call dein#add('junegunn/fzf.vim')
  
  " graphql
  call dein#add('jparise/vim-graphql')

  " rails & ruby
  call dein#add('tpope/vim-rails')
  call dein#add('skalnik/vim-vroom')

  " erlang
  call dein#add('vim-erlang/vim-erlang-runtime')

  " elixir
  call dein#add('elixir-editors/vim-elixir')

  " rust
  call dein#add('rust-lang/rust.vim')

  " ds
  call dein#add('szymonmaszke/vimpyter')

  " status bar
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " colorschemes
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('morhetz/gruvbox')
  call dein#add('lifepillar/vim-solarized8')

  call dein#end()
  call dein#save_state()
endif

" partials 
source ~/.config/nvim/config/base.vim
source ~/.config/nvim/config/mappings.vim
