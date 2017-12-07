syntax enable
set autoindent
set copyindent
set ru
set hlsearch
set incsearch
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set smarttab
set cursorline
set wildmenu
set showmatch
set laststatus=2
set nocompatible
set hidden
set nowrap
set backspace=indent,eol,start
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set pastetoggle=<F2>
set encoding=utf-8
let mapleader=','
colorscheme badwolf

" Vundle ------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jreybert/vimagit'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
Plugin 'tokuhirom/mydiary.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'johngrib/vim-game-code-break'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vimwiki/vimwiki'
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
filetype plugin indent on  
" Vundle ------------------------------------------------

" Vim-Plug ---------------------------------------------
"call plug#begin('~/.vim/plugged')
"call plug#end()
" Vim-Plug ---------------------------------------------

" airline -----------------------------------------------
"let g:airline_theme='badwolf'
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline_detect_modified=1
"let g:airline_powerline_fonts = 1
"" airline -----------------------------------------------
"
" Goyo Limelight integration ---------------------------
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!
"" Goyo Limelight integration ---------------------------
"
"SimplyFold---------------------------------------------
let g:SimplyFold_docstring_preview = 1
"SimplyFold---------------------------------------------

" Mappings ----------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <Space> za
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
nmap <leader>d :call mydiary#new()<cr>
nmap <leader><space> :nohlsearch<CR>
nmap <silent> <leader>ev : e $MYVIMRC<CR>
nmap <silent> <leader>sv : so $MYVIMRC<CR>
nmap <leader>t "=strftime("%H:%M")<CR>P
nmap <leader>y "=strftime("%a,%Y-%m-%d")<CR>P
" Mappings ----------------------------------------------

let g:mydiary_path=$HOME . "/.diary/"
