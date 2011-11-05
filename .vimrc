set nocp
set mouse=a
set foldmethod=indent
set autoindent
"opções do autocompletar
set wildmenu
set wildmode=list:longest,full
"interface
syntax enable
set ruler
set number
set title
set backspace=2
set background=dark
set tabstop=4		" Espaços por tab
set shiftwidth=4	" Espaços para cada passo de indent
"set textwidth=79
"set expandtab		" Substitui tab por espaços adequados
        			" Use CTRL-V <Tab> para colocar Tabs reais
set smarttab		" usa shiftwidth no início, tabstop no meio
	        		" <BS> apaga shiftwidth no início
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd	    	" mostra comando parcial
set showmatch
set nomodeline
set t_Co=256

set ofu=syntaxcomplete#Complete	"omnicompletion

"ajuste para comandos pessoais e de plugins
"let mapleader = ","

"austes de comandos
map <space> <c-f>
map <backspace> <c-b>
"map <F10> <Esc>:setlocal spell spelllang=pt_br<CR>
map <F10> <Esc>:setlocal spell spelllang=en_us<CR>
map <F11> <Esc>:setlocal nospell<CR>

imap jj <ESC>

" vim-latex settings

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

call pathogen#infect()
call pathogen#helptags()

" OPTIONAL: this enables automatc indentation as you type.
filetype indent on

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
filetype plugin indent on
syntax on

"ajuste para quando uso GUI
if has('gui_running')
	colorscheme murphy
endif

" verificação de sintaxe
autocmd Filetype c nnoremap <buffer> <leader>ll :!gcc -fsyntax-only %<CR>
autocmd Filetype perl nnoremap <buffer> <leader>ll :!perl -c %<CR>

" tipo por pasta
"autocmd BufRead,BufNewFile ~/.remind/* set syntax=remind

" NERDTree
map <F2> :NERDTreeToggle<CR>
