set whichwrap=<,>,[,] " line wrap for cursor keys
set softtabstop=4 " number of spaces used for tab (don't use <TAB> character)
set shiftwidth=4 " number of spaces indented by >> and <<
filetype plugin indent on
set backspace=indent,eol,start " allow backspacing over autoindent, eol, start of insert
set autowrite " automatic writes
set hidden " hide buffers instead of abandoning them
set noexpandtab " use real tab if possible

" view settings
set showmatch " show matching brackets
syntax enable
set linebreak " break long lines
set number " show line numbers
set ruler " show current cursor position
highlight Statement ctermfg=2

" searching
set incsearch
set nohlsearch

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup


" map visual movement to cursor-block
map OA gk
map OB gj

let mapleader = "#"
" change window
nnoremap <Leader>w <C-w>w

" execute ex command in first line, after "MAKE:"
nnoremap <Leader>m :call ExecuteFirstLineMake()<CR>

" shortcuts for latex environments
inoremap <Leader><Leader>e \begin{enumerate}<CR>\item<CR>\end{enumerate}<UP>
inoremap <Leader><Leader>i \begin{itemize}<CR>\item<CR>\end{itemize}<UP>
inoremap <Leader><Leader>d \begin{description}<CR>\item[]<CR>\end{description}<UP><LEFT>
inoremap <Leader><Leader>t \begin{center}\begin{tabu}{}<CR>\toprule<CR>\midrule<CR>\bottomrule<CR>\end{tabu}\end{center}<ESC><UP><UP><UP><UP>$i
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
