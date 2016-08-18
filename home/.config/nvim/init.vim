""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" agliga vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

let mapleader = ","

set rtp+=~/.fzf

call plug#begin('~/.vim/plugged')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let Plug manage Vundle
" required!
Plug 'gmarik/vundle'


Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'gregsexton/MatchTag'
Plug 'vim-scripts/a.vim'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'Shougo/deoplete.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'eugen0329/vim-esearch'
Plug 'mhinz/vim-grepper'

Plug 'sjl/gundo.vim'
Plug 'vim-scripts/IndexedSearch'
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/restore_view.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Lokaltog/vim-powerline'

"Programing
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'

"JS
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
Plug 'kchmck/vim-coffee-script'
Plug 'terryma/vim-multiple-cursors'

"Other
Plug 'tpope/vim-markdown'
Plug 'spf13/vim-preview'


call plug#end()

filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set number      "show line numbers

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set wrap        "wrap lines
set linebreak   "wrap lines at convenient points


"default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set hidden                          " Allow buffer switching without saving

set cursorline
set ruler                   " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd                 " Show partial commands in status line and
                            " Selected
                            " characters/lines in
                            " visual mode


set pastetoggle=<F2>


if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    "set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

    let g:airline_theme='powerlineish'       " airline users use the powerline theme
    let g:airline_powerline_fonts=1          " and the powerline fonts
endif

filetype plugin on

"turn on syntax highlighting
syntax on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set ic                          " Ignore case
set hlsearch                    " Highlight search terms

set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No annoying sound on errors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No undos
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

set shortmess+=I

set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Key schemes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Fix home and end keybindings for screen, particularly on mac
" - for some reason this fixes the arrow keys too. huh.
map [F $
imap [F $
map [H g0
imap [H g0

" Toggle search highlighting
nmap <silent> <leader>/ :nohlsearch<CR>

" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <leader>e :NERDTreeFind<CR>

"nnoremap <silent> <leader>c :!/usr/local/bin/ctags -R -a -f ~/.vimtags . &<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Grepper
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>s :Grepper<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-p> :FZF<CR>
"let g:ctrlp_working_path_mode = 'ra'
"nnoremap <silent> <D-t> :CtrlP<CR>
"nnoremap <silent> <D-r> :CtrlPMRU<CR>
"let g:ctrlp_custom_ignore = {
"            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
"            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Sniptmates
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagBar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>tt :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUndo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>u :GundoToggle<CR>
" If undotree is opened, it is likely one wants to interact with it.
let g:undotree_SetFocusWhenToggle=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint', 'jscs']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./.tags;/,~/.vimtags
let g:tagbar_ctags_bin = '/usr/bin/ctags'
nnoremap <silent> <Leader>c :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVIM- (here instead of .gvimrc)
""""set guifont=Lucida_Console:h11""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guioptions-=T           " Remove the toolbar
"set guifont=Monaco:h18

"if has('gui_running')
"    set lines=40                " 40 lines of text instead of 24
"    if has('gui_macvim')
"        set transparency=5      " Make the window slightly transparent
"    endif
"else
"    set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
    "set term=builtin_ansi       " Make arrow and other keys work
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:solarized_termcolors=256
syntax enable
let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
set background=dark
colorscheme solarized



