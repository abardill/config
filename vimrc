set nocompatible
set number
set relativenumber
set timeoutlen=1000 ttimeoutlen=10
set wildmode=longest,list,full
set wildmenu
set wrap!
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
"set expandtab
set background=dark
set t_Co=256
"set termguicolors
syntax enable
"colorscheme monokai_pro
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
call vundle#end()
filetype plugin indent on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

source ~/config/ergo.vim
