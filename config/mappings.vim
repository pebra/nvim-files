" maps leader to space inspired by spacemacs/doom-emacs/spacevim
let g:mapleader = ' '

" browse your project files super fast and fuzzy
nnoremap <leader>pf :Files<CR>
" browse your open buffers super fast and fuzzy
nnoremap <leader>pb :Buffers<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" NERDTree bindings
map <leader>ptt :NERDTreeToggle<CR>
map <leader>ptf :NERDTreeFind<CR>
map <leader>ptr :NERDTreeRefreshRoot<CR>

" spell checking
map <leader>sss :set spell spelllang=en_ca<CR>
map <leader>sns :set nospell<CR>

function ToggleColors()
    if (&background == 'dark')
        set background=light
        hi Comment ctermbg=0
    else
        set background=dark
    endif
endfunction

" toggle between dark and light theme
map <leader>ctt :call ToggleColors()<CR>


" ale mappings
noremap <Leader>cgd :ALEGoToDefinition<CR>
nnoremap <leader>ccf :ALEFix<cr>
noremap <Leader>cfu :ALEFindReferences<CR>

" vimpyter bindings
autocmd Filetype ipynb nmap <silent><Leader>pb :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>pj :VimpyterStartJupyter<CR>
autocmd Filetype ipynb nmap <silent><Leader>pn :VimpyterStartNteract<CR>

" vroom test runner bindings
map <leader>ttf :VroomRunTestFile<CR>
map <leader>ttn :VroomRunNearestTest<CR>
map <leader>ttl :VroomRunLastTest<CR>

