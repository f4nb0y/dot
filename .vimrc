" vim(1)

set nocompatible
set encoding=utf-8

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

" https://github.com/junegunn/vim-plug#installation
call plug#begin()
    " https://black.readthedocs.io/en/stable/integrations/editors.html#vim
    Plug 'psf/black', { 'branch': 'stable' }
call plug#end()
