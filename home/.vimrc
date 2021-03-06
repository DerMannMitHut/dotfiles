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
set relativenumber " show relative line numbers
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

" vim -b : edit binary using xxd-format!
augroup Binary
    au!   
    au BufReadPre  *.bin let &bin=1
    au BufReadPost *.bin if &bin | %!xxd
    au BufReadPost *.bin set ft=xxd | endif 
    au BufWritePre *.bin if &bin | %!xxd -r
    au BufWritePre *.bin endif
    au BufWritePost *.bin if &bin | %!xxd
    au BufWritePost *.bin set nomod | endif
augroup END

