let mapleader = ","

set ffs=unix
set autoindent
set encoding=utf-8
set cul
set foldmethod=indent

let g:ycm_key_list_select_completion = []

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" osx clipboard
set clipboard=unnamed

" make backspace behave like normal again
set bs=2

" osx optimizations
let g:loaded_matchparen=1
set nocursorline
set nocursorcolumn
set lazyredraw
set ttyfast

" Show whitespace in red
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

set t_Co=256
color wombat256mod

" Showing line numbers and length
set number  " show line numbers
set tw=119   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set ruler
set autoread autowrite
set colorcolumn=120
highlight ColorColumn ctermbg=233


" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

set wildmenu

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
