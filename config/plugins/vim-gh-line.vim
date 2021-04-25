" github vim-gh-line config
let g:gh_line_map = '<leader>ghl'
let g:gh_line_blame_map = '<leader>ghb'
let g:gh_open_command = 'open ' " the whitespace here is important
let g:gh_use_canonical = 1

" copy github link to clipboard instead of opening the browser
" let g:gh_open_command = 'fn() { echo "$@" | pbcopy; }; fn '

