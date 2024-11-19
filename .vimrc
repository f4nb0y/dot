" vim(1)

set nocompatible
set directory=~/.vimswap//
set encoding=utf-8

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set report=0
set ruler

set splitbelow
set splitright

" https://github.com/junegunn/vim-plug#installation
call plug#begin()
    " https://github.com/prettier/vim-prettier
    Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
    " https://black.readthedocs.io/en/stable/integrations/editors.html#vim
    Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

set incsearch
augroup incsearch_highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup end

augroup python_autoformat
    autocmd!
    autocmd BufWritePre *.py Black
augroup end
let g:black_skip_string_normalization = 1

autocmd Filetype typescript setlocal shiftwidth=2 softtabstop=2
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
