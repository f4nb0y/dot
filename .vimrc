" vim(1)

set nocompatible

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set report=0
set ruler

set splitbelow
set splitright

set incsearch
augroup incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

set encoding=utf-8
filetype plugin indent on
syntax on
