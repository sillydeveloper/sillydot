set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


set rtp+=/Users/aettinger/Projects/powerline/powerline/bindings/vim

set laststatus=2
set t_Co=256

syntax on
set ruler
set number
set errorbells
set visualbell
set tabstop=2
set expandtab
set noswapfile

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

Plugin 'tpope/vim-haml'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'flazz/vim-colorschemes'
Plugin 'itspriddle/vim-javascript-indent'

colorscheme skittles_berry

call vundle#end()            " required
filetype plugin indent on    " required

" Uses silversurfer to do Ctrl-P completion.
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif
