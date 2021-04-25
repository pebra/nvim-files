" maps leader to space inspired by spacemacs/doom-emacs/spacevim
let g:mapleader = ' '

" spell checking
map <leader>sss :set spell spelllang=en_ca<CR>
map <leader>sns :set nospell<CR>

function ToggleColors()
    if (&background == 'dark')
        set background=light
        colorscheme one
        hi Comment ctermbg=0
    else
        set background=dark
        colorscheme tender
    endif
endfunction

" toggle between dark and light theme
map <leader>ctt :call ToggleColors()<CR>

" format json
map <leader>ffj :%!python -m json.tool<CR>

" align markdown tables
au FileType markdown vmap <Leader>== :EasyAlign*<Bar><Enter>

source ~/.config/nvim/config/keybindings/vroom.vim
source ~/.config/nvim/config/keybindings/jupyter.vim
source ~/.config/nvim/config/keybindings/language-server.vim
source ~/.config/nvim/config/keybindings/files.vim
