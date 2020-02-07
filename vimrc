set number

set tabstop=4
set shiftwidth=4

set autoindent
set cindent
set smartindent

set mouse=a
set clipboard=unnamedplus

set guifont=Monospace\ 12
set guioptions -=T
set nowrap

colo badwolf


map <F5> :!./%< <CR>
map <F8> :!clear <CR> :!g++ -std=c++14 -Wall -Wshadow -Wextra -DLOCAL -o %< % -D__GLIBCXX_DEBUG -fsanitize=address -fsanitize=undefined -g <CR>


au BufNewFile *.cpp 0r ~/tpl.cpp
au filetype cpp setlocal commentstring=//\ %s

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on
