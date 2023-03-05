set shell=/bin/zsh

syntax on
set clipboard+=unnamed 
set autoindent
set number
set relativenumber
set cursorline
set incsearch
set ignorecase
set ts=4
set expandtab

nnoremap j gj
nnoremap k gk
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
imap jk <esc>

