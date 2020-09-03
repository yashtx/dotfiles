syntax on                      " enable syntax highlighting                     
                                                                                   
 set smartindent                " better autoindent (e.g. add indent after '{')  
 set nu                         " always show line numbers
 set relativenumber             " show relative numbering
 set showcmd                    " show command in bottom bar                                                   
 set expandtab                  " convert <TAB> key-presses to spaces               
 set nocompatible               " dump the old fashioned vi support!             
 set noswapfile                 " don't swap files                               
 set nowrap                     " don't wrap lines
 set mouse+=a                   " A necessary evil, mouse support 
 set encoding=utf-8             " set encoding to UTF-8 (default was "latin1")  
 set cursorline                 "show line numbers




 " Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " Insert 4 spaces on a tab
set expandtab       " tabs are spaces, mainly because of python


 "Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case in searches by default
set smartcase           " But make it case sensitive if an uppercase is entered
" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" turn off search highlight
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" Undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir



 set t_Co=256 
 colorscheme jellybeans
 set background=dark 

 call plug#begin('~/.vim/plugged')


  Plug 'airblade/vim-gitgutter'          "vim & github sync
  Plug 'dense-analysis/ale'              "syntax checking and semantic errors
  Plug 'mattn/emmet-vim'
  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'frazrepo/vim-rainbow'
  Plug 'junegunn/fzf.vim'
  Plug 'kshenoy/vim-signature'          " Show marks in the gutter
  Plug 'romainl/vim-cool'               " Disables highlight when search is done
  Plug 'haya14busa/incsearch.vim'       " Better incremental search
  Plug 'xuyuanp/nerdtree-git-plugin'    " Show status of files in NerdTree
  Plug 'mechatroner/rainbow_csv'        " CSV color coding
  Plug 'ap/vim-css-color'               " CSS colors

  
  " GUI enhancements
  Plug 'itchyny/lightline.vim'          " Better Status Bar
  Plug 'mhinz/vim-startify'             " Better start screen
  Plug 'yggdroot/indentline'            " Shows indentation levels
  Plug 'scrooloose/nerdtree'            " File explorer


  " Text Manipulation
  Plug 'tpope/vim-sensible'             " Some better defaults
  Plug 'tpope/vim-unimpaired'           " Pairs of mappings
  Plug 'tpope/vim-surround'             " Surround with parentheses & co
  Plug 'joom/vim-commentary'            " To comment stuff out
  Plug 'terryma/vim-multiple-cursors'   " Multiple cursors like sublime
  Plug 'tpope/vim-speeddating'          " Dates in vim


  " Writing
  Plug 'junegunn/goyo.vim'               " Distraction free mode
  Plug 'junegunn/limelight.vim'          " Focus on current paragraph
  Plug 'rhysd/vim-grammarous'            " GrammarCheck using LanguageTool


   " python vim plugins


  Plug 'nvie/vim-flake8'
  Plug 'Valloric/YouCompleteMe'
  Plug 'scrooloose/syntastic'
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }


" Tmux GUI
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'roxma/vim-tmux-clipboard'
  Plug 'christoomey/vim-tmux-navigator'


 call plug#end()

 imap <F5> <Esc> :w<CR>:!clear;python %<CR>a


" Lose Bad Habits
" http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove newbie crutches in Command Mode
" cnoremap <Down> <Nop>
" cnoremap <Left> <Nop>
" cnoremap <Right> <Nop>
" cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>



" * NERDTree
" Close vim if only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())| q | endif



" Leader
let mapleader=" "       " leader is space


"  w wq q   --  Quick Save
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
