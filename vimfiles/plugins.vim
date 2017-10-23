call plug#begin('~/.vim/plugged')
" Plug 'lvht/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
" Plug 'docteurklein/vim-symfony'
" Plug 'mkusher/padawan.vim'

if has('nvim')
Plug 'roxma/nvim-completion-manager'
endif
call plug#end()

" phpcd use php 56 bin
let g:phpcd_php_cli_executable = 'php56'

" Nerdtree: autostart
" https://github.com/jistr/vim-nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup=0

" let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')

let g:padawan#composer_command = "composer"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:phpcomplete_php_binary = "php"
let g:phpcomplete_index_composer_command = "composer"

let g:ycm_key_invoke_completion = '<C-o>'

let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.php =
\ ['->', '::', '(', 'use ', 'namespace ', '\']

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

let g:symfony_app_console_caller= "php"
let g:symfony_app_console_path= "bin/console"

" let g:phpcomplete_index_composer_command = 'composer'
