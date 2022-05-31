" vim mode
if &compatible
  set nocompatible
endif

" hybrid line numbers
set number relativenumber

" manage plugins with vim-plug
call plug#begin()
" appearance
Plug 'rebelot/kanagawa.nvim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
Plug 'maximbaz/lightline-ale'

" completion and linting
Plug 'neovim/nvim-lspconfig'
Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" config that plugins depend on:
filetype plugin indent on
syntax enable
set tgc

" visual configs
set laststatus=2
set noshowmode
set cursorline
set termguicolors
set wildmenu

let g:lightline = {
  \ 'colorscheme': 'darcula',
  \}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \}

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \}

let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }


let g:OmniSharp_server_use_mono = 1
let g:ale_linters = {
  \ 'cs': ['OmniSharp']
  \}

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

colorscheme kanagawa
