set nocompatible

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
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
  call dein#add('junegunn/vim-easy-align')

  " language server
  call dein#add('neovim/nvim-lspconfig')

  " autocompletion
  call dein#add('hrsh7th/cmp-nvim-lsp')
  call dein#add('hrsh7th/cmp-buffer')
  call dein#add('hrsh7th/cmp-path')
  call dein#add('hrsh7th/cmp-cmdline')
  call dein#add('hrsh7th/nvim-cmp')
  call dein#add('hrsh7th/cmp-vsnip')
  call dein#add('hrsh7th/vim-vsnip')

  " git & github
  call dein#add('tpope/vim-fugitive')
  call dein#add('ruanyl/vim-gh-line')

  " file and project handling
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('kyazdani42/nvim-web-devicons')
  call dein#add('kyazdani42/nvim-tree.lua')
  call dein#add('nvim-lualine/lualine.nvim')
  call dein#add('junegunn/fzf', {
        \ 'build': './install --bin',
        \ 'dir': '~/.cache/dein/repos/github.com/junegunn/fzf'
        \})
  call dein#add('junegunn/fzf.vim')

  " graphql
  call dein#add('jparise/vim-graphql')

  " rails & ruby
  call dein#add('tpope/vim-rails')

  " erlang
  call dein#add('vim-erlang/vim-erlang-runtime')

  " elixir
  call dein#add('elixir-editors/vim-elixir')

  " rust
  call dein#add('rust-lang/rust.vim')

  " colorschemes
  call dein#add('EdenEast/nightfox.nvim')

  call dein#end()
  call dein#save_state()
endif
