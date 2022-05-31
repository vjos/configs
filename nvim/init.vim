" vim mode
if &compatible
  set nocompatible
endif

" hybrid line numbers
set number relativenumber

" manage plugins with vim-plug
call plug#begin()
Plug 'rebelot/kanagawa.nvim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
call plug#end()

" config that plugins depend on:
filetype plugin indent on
syntax enable
set tgc

" visual configs
set laststatus=2
set noshowmode
set cursorline

set wildmenu

" coq config
let g:coq_settings = { 
  \ 'display.icons.mode': 'none',
  \ 'auto_start': 'shut-up'
  \}

let g:lightline = {
  \ 'colorscheme': 'darcula',
  \}

colorscheme kanagawa
