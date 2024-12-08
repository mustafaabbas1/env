" An example for a vimrc file.

let s:running_windows = has("win16") || has("win32") || has("win64")

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
    finish
endif

" wrap lines
"  :help 'wrap'      -- default on
"  :help 'showbreak' -- default ""
"  :help 'cpo-n'     -- default off
set wrap 
set showbreak=>\  " this means "> ".
"" set cpoptions+=n

" insert mode completion (CTRL-P).
"  :help 'completeopt' --  default "menu,preview"
"  :help 'complete'    --  default ".,w,b,u,t,i"
"  :help 'showfulltag' --  default off
set completeopt=menu,preview,menuone,longest
set complete=.,w,b,t,u,i

" Enable syntax-folding, and spice up the auto-formatting options.
set foldmethod=syntax
set fo+=n
set foldlevelstart=2

set textwidth=120

" always have syntax highlighting on!
syntax on
au BufRead,BufNewFile *.lpp setf lex
au BufRead,BufNewFile *.ypp setf yacc
au BufRead,BufNewFile *.vo setf verilog
au BufRead,BufNewFile *.vh setf verilog
au BufRead,BufNewFile *.vho setf vhdl
au BufRead,BufNewFile *.csv setf csv
au BufRead,BufNewFile *.pl setf perl
au BufRead,BufNewFile *.conf setf cfg
au BufRead,BufNewFile *.ini setf cfg

" have 4 space tabs
set tabstop=4
set shiftwidth=4
set expandtab

set number
set title

colorscheme torte

" tab completion auto mapping
" imap <tab> <c-n>
" imap <s-tab> <c-p>

" make the window start with occupying the botton right 1/4 of the display
" for 1920 by 1200 displays on Windows 7
" winpos 0 0
set guifont=Monospace\ 12
" set lines=28
" set columns=116

" setting auto indenting
filetype indent on
set autoindent

set ruler

" fixing backspace
set backspace=indent,eol,start

set hlsearch

" set tabpagemax=120
set backupdir=~/vimfiles/backup " where to put backup files
set directory=~/vimfiles/temp " directory to place swap files in
