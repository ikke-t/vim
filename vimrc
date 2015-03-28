execute pathogen#infect()

" looks
syntax on
set bg=dark
set statusline=%-20F       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%{fugitive#statusline()} "git branch
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

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
