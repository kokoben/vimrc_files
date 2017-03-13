set lines=200 columns=200
set number
set incsearch
set history=50
set backspace=indent,eol,start
set shortmess+=I
set background=dark
set guifont=Dejavu\ Sans\ Mono\ 11
colorscheme solarized
set nobackup
set nowritebackup
set noswapfile
syntax enable
"set colorcolumn=80
set ruler
set tabstop=4 "pressing tab indents by 4 spaces
set softtabstop=4 "sets number of spaces to 4 inserted when tab is pressed
set shiftwidth=4 "how wide an auto-indent is
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set splitright
set splitbelow

execute pathogen#infect()
filetype plugin indent on

autocmd vimenter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autochdir
let NERDTreeChDirMode=2

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
