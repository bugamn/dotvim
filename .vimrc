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
set cursorcolumn
set ttyfast
set laststatus=2

set foldmethod=indent
set autoindent
set shiftround
syntax on

" OPTIONAL: this enables automatic indentation as you type.
if has("autocmd")
    filetype on
    filetype plugin on
    filetype indent on
endif

" buffers
set switchbuf=useopen,split

" autocomplete options
set wildmenu
set wildmode=list:longest,full

" tabs aren't all that necessary
set tabstop=4       " Espaces for tab
set shiftwidth=4    " Espaces for each indent
set softtabstop=4
" TODO function to exchange tabs for spaces
set expandtab       " Substutes tab for spaces
                    " Use CTRL-V <Tab> to put real Tabs
set smarttab        " use shiftwidth at beginning, tabstop in middle
                    " <BS> erases shiftwidth at start

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd         " shows partial command
set showmatch
set gdefault

" color
set t_Co=256
colorscheme blackboard

" buffers
set hidden

set undofile

" show whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" personal commands
map Y y$
map <space> <c-f>
map <backspace> <c-b>
"map <F10> <Esc>:setlocal spell spelllang=pt_br<CR>
map <F10> <Esc>:setlocal spell spelllang=en_us<CR>
map <F11> <Esc>:setlocal nospell<CR>

imap jj <ESC>

map ç :noh<ENTER>

set ofu=syntaxcomplete#Complete	"omnicompletion

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

call pathogen#infect()
call pathogen#helptags()

" CamelCaseMove
map \w <Plug>CamelCaseMotion_w
map \e <Plug>CamelCaseMotion_e
map \b <Plug>CamelCaseMotion_b

" latex filetype fix
let g:tex_flavor = "latex"

" save on exit
autocmd FocusLost * :wa

" verificação de sintaxe
autocmd Filetype c nnoremap <buffer> <leader>ll :!gcc -fsyntax-only %<CR>
autocmd Filetype perl nnoremap <buffer> <leader>ll :!perl -c %<CR>

" filetype
autocmd BufRead,BufNewFile bash-fc-* set filetype=sh
autocmd BufRead,BufNewFile .bash* set filetype=sh

" tipo por pasta
"autocmd BufRead,BufNewFile ~/.remind/* set syntax=remind

" LanguageTool
let g:languagetool_jar='$HOME/.languagetool/LanguageTool.jar'

" Gundo
nnoremap <F5> :GundoToggle<CR>

