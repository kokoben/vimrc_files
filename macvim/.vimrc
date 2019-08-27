set lines=60 columns=120
set number
set incsearch
set history=50
set backspace=indent,eol,start
set shortmess+=I
set guifont=Menlo\ Regular:h14
syntax enable
set background=dark
colorscheme dracula
set nobackup
set nowritebackup
set noswapfile
"set colorcolumn=80
set ruler
set tabstop=2 "pressing tab indents by 4 spaces
set softtabstop=2 "sets number of spaces to 4 inserted when tab is pressed
set shiftwidth=2 "how wide an auto-indent is
set expandtab
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set splitright
set splitbelow
set nowrap

execute pathogen#infect()
filetype plugin indent on

autocmd vimenter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open NerdTree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>

set autochdir
let NERDTreeChDirMode=2

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
