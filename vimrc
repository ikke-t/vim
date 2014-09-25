execute pathogen#infect()
" looks
syntax on
set bg=dark
" style
filetype plugin indent on
set expandtab
set smarttab
set autoindent

" filenames
set ls=2 " filename on modeline
set wildmenu
set wildmode=longest,list,full
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

set modelines=5

set ignorecase
set smartcase
set incsearch
set hidden "lusty explorer wants this
