noremap <F4> <Esc>:set number!<CR>
noremap <F5> <Esc>:w<CR>:!clear;python %<CR>
noremap <F7> <Esc>:tabp<CR>
noremap <F8> <Esc>:tabn<CR>

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set t_Co=256
syntax on
colorscheme gruvbox
set background=dark
