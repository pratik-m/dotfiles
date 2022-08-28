# .vimrc file

# disable arrow keys 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let mapleader=" " 

" ---- backup -----
set noswapfile
set nobackup 

set showcmd                                " show commands as you type in the lower right
set laststatus=2                           " always show the status line 


set backspace=indent,eol,start             " set backspace to remove character 

set nocompatible                           " Dont try to be vi comptible 

syntax on 

filetype plugin indent on 


" ---- Editor stuff -----
set number                                 " show line number 
set relativenumber                         " show relative line number
set ruler                                  " show files stats
set encoding=utf-8

set wrap 
set tabstop=4                              " set tab to 4 spaces
set shiftwidth=4                           
set softtabstop=4
set expandtab                              " convert tab to spaces
set listchars=tab:▸\ ,eol:¬                 " show specials chars as symbol 
set pastetoggle=<leader>p                  " toggle between paste mode


" ---- status bar ---- 
set laststatus=2               
set showmode                               " show the mode on the last line 
set showcmd                                " show command at the last line 
set showtabline=2                          " show the tabs even if there is one file open
set title


" ----- search ----
set hlsearch
set incsearch
set ignorecase 
set smartcase 
set showmatch 
nnoremap <leader>/ :nohl<CR>


# ----- override keystrokes ------ 
command! W w 
command! Wq wq 

nnoremap S i<cr><esc><right>               " just like J joins the lines, this splits the line

inoremap jj <Esc>

nnoremap <leader>o o<esc>                  " just like O but wihout insert mode 
nnoremap <leader>O O<esc>

map <leader>l :set list!<CR>               " toggle between set lists 
map <leader>t :tabnew<CR>                  " create a new tab 

