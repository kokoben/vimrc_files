set lines=200 columns=200
set number
set incsearch
set history=50
set backspace=indent,eol,start
set shortmess+=I
set guifont=Consolas:h11:cANSI
set background=dark
set nobackup
set nowritebackup
set noswapfile
syntax enable
"set colorcolumn=80
set ruler
set tabstop=4 "pressing tab indents by 4 spaces
set softtabstop=4 "sets number of spaces to 4 inserted when tab is pressed
set shiftwidth=4 "how wide an auto-indent is
set autoindent
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set splitright
set splitbelow
set nowrap

execute pathogen#infect()
filetype on
filetype plugin on

colorscheme onedark

autocmd vimenter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autochdir
let NERDTreeChDirMode=2

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g_syntastic_Check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
