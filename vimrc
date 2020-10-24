let mapleader=","
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
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" end syntastic
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

" ansible plugin
let g:ansible_extra_keywords_highlight = 1
let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'
let g:ansible_attribute_highlight = "ob"
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible

" syntastic
let g:syntastic_ansible_checkers=['ansible_lint']
let g:syntastic_yaml_checkers=['yamllint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 1


" autocmd BufNewFile,BufRead *.yml set filetype=ansible

" fix yaml to get identified right. Commented out due having ansible plugin
" now
"augroup yaml_fix
"   autocmd!
"   autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
"augroup END

colorscheme codedark
