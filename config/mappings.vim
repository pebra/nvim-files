" maps leader to space inspired by spacemacs/doom-emacs/spacevim
let g:mapleader = ' '

" browse your project files super fast and fuzzy
nnoremap <leader>pf :Files<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" NERDTree bindings
map <leader>ptt :NERDTreeToggle<CR>
map <leader>ptf :NERDTreeFind<CR>

" spell checking
map <leader>sss :set spell spelllang=en_ca<CR>
map <leader>sns :set nospell<CR>

function ToggleColors()
    if (g:colors_name == "nord")
        set background=light
        colorscheme PaperColor
    else
        set background=dark
        colorscheme nord
    endif
endfunction

map <leader>ctt :call ToggleColors()<CR>