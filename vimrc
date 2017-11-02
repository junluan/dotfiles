" Make Vim more useful
set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Enable line numbers
set number
" Highlight searches
set hlsearch
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Enable mouse in all modes
set mouse=a
" Make tabs as wide as two spaces
set tabstop=2
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" No backup and swap file
set nobackup
set noswapfile

map <C-i> :FormatCode<CR>

call glaive#Install()
Glaive codefmt clang_format_executable='clang-format'
Glaive codefmt clang_format_style='Google'

map <C-n> :NERDTreeToggle<CR>

" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

