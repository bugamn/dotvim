"autocmd! " clean autocommands - is this necessary?
" break compability with vi - vi-compability isn't needed
set nocompatible

" set a sane environment
set mouse=a
set backspace=2

" interface
syntax enable
set background=dark
set ruler
set number
set title

set foldmethod=indent
set autoindent

" autocomplete options
set wildmenu
set wildmode=list:longest,full

" tabs aren't all that necessary
set tabstop=4		" Espaces for tab
set shiftwidth=4	" Espaces for each indent
set softtabstop=4
" TODO function to exchange tabs for spaces
set expandtab		" Substutes tab for spaces
        			" Use CTRL-V <Tab> to put real Tabs
autocmd Filetype make set noexpandtab
set smarttab		" use shiftwidth at beginning, tabstop in middle
	        		" <BS> erases shiftwidth at start

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd	    	" shows partial command
set showmatch
set nomodeline
set t_Co=256
colorscheme koehler

" personal commands
map <space> <c-f>
map <backspace> <c-b>
"map <F10> <Esc>:setlocal spell spelllang=pt_br<CR>
map <F10> <Esc>:setlocal spell spelllang=en_us<CR>
map <F11> <Esc>:setlocal nospell<CR>

imap jj <ESC>

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
set ofu=syntaxcomplete#Complete	"omnicompletion

" vim-latex settings

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

call pathogen#infect()
call pathogen#helptags()

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
let g:tex_flavor='latex'

let g:Tex_ViewRule_dvi = 'evince >/dev/null 2>&1'
let g:Tex_ViewRule_ps = 'evince >/dev/null 2>&1'
let g:Tex_ViewRule_pdf = 'evince >/dev/null 2>&1'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" OPTIONAL: this enables automatic indentation as you type.
filetype plugin indent on
syntax on

"ajuste para quando uso GUI
"if has('gui_running')
	"colorscheme murphy
"endif

" verificação de sintaxe
autocmd Filetype c nnoremap <buffer> <leader>ll :!gcc -fsyntax-only %<CR>
autocmd Filetype perl nnoremap <buffer> <leader>ll :!perl -c %<CR>

" tipo por pasta
"autocmd BufRead,BufNewFile ~/.remind/* set syntax=remind

" NERDTree
map <F2> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" LanguageTool
let g:languagetool_jar='$HOME/.languagetool/LanguageTool.jar'
