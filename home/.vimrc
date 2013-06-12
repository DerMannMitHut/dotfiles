syntax enable
set whichwrap=<,>,[,]
set softtabstop=4
set shiftwidth=4
set backspace=2
set autowrite
set hidden
set showmatch
"set tw=80
set noexpandtab
set incsearch
set nohlsearch
set ruler
set linebreak
set number
filetype plugin indent on
highlight Statement ctermfg=2

" map visual movement to cursor-block
map OA gk
map OB gj

let mapleader = "-"
" change window
nnoremap <Leader>w <C-w>w

" execute ex command in first line, after "MAKE:"
nnoremap <Leader>m :call ExecuteFirstLineMake()<CR>

" shortcuts for latex environments
inoremap <Leader>-e \begin{enumerate}<CR>\item<CR>\end{enumerate}<UP>
inoremap <Leader>-i \begin{itemize}<CR>\item<CR>\end{itemize}<UP>
inoremap <Leader>-d \begin{description}<CR>\item[]<CR>\end{description}<UP><LEFT>
inoremap <Leader>i \item

set enc=utf-8
set fenc=utf-8

set display=lastline

function! ExecuteFirstLineMake()
    let firstline = getline(1)
    let m = match( firstline, "MAKE:" )
    echo m
    if m>=0
	execute( substitute( firstline, ".*MAKE:\\s*", "", "") )
    endif
endfunction
