"autocmd! " clean autocommands - is this necessary?
" break compability with vi - vi-compability isn't needed
set nocompatible

" set a sane environment
set mouse=a
set backspace=2
set scrolloff=3
set nomodeline " security!

" interface
syntax enable
set background=dark
set ruler
set relativenumber
set title
set cursorline
set ttyfast
set laststatus=2

set foldmethod=indent
set autoindent
set shiftround

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
autocmd Filetype make setlocal noexpandtab
set smarttab		" use shiftwidth at beginning, tabstop in middle
	        		" <BS> erases shiftwidth at start

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd	    	" shows partial command
set showmatch
set gdefault

" color
set t_Co=256
colorscheme koehler

" buffers
set hidden

" undofile
set undofile

" show whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

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

" OPTIONAL: this enables automatic indentation as you type.
filetype plugin indent on
syntax on

"ajuste para quando uso GUI
"if has('gui_running')
	"colorscheme murphy
"endif

" save on exit
autocmd FocusLost * :wa

" verificação de sintaxe
autocmd Filetype c nnoremap <buffer> <leader>ll :!gcc -fsyntax-only %<CR>
autocmd Filetype perl nnoremap <buffer> <leader>ll :!perl -c %<CR>

" tipo por pasta
"autocmd BufRead,BufNewFile ~/.remind/* set syntax=remind

" NERDTree
map <F2> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Rainbow Parenthsis
if exists("g:btm_rainbow_color") && g:btm_rainbow_color
    call rainbow_parenthsis#LoadSquare ()
    call rainbow_parenthsis#LoadRound ()
    call rainbow_parenthsis#Activate ()
endif

" LanguageTool
let g:languagetool_jar='$HOME/.languagetool/LanguageTool.jar'

" Gundo
nnoremap <F5> :GundoToggle<CR>
