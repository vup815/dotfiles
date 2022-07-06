set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set shell=/bin/zsh

call vundle#begin()

"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

set clipboard=unnamed 
set cursorline
set incsearch
set hlsearch
set ignorecase
set relativenumber
set ts=4
set expandtab
set cindent
set t_Co=256

let mapleader=","
nnoremap j gj
nnoremap k gk

imap jk <esc>

Plugin 'tpope/vim-surround'
