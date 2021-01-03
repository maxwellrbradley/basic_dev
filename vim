set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize


"let g:syntastic_python_python_exec = 'python3' 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
set ruler
syntax on
set tabstop=4
set hlsearch
set laststatus=2
set statusline+=%F
set shiftwidth=4
set expandtab
set mouse=a 
colo desert
set smartindent
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
