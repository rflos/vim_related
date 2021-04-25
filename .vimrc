"Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'tomasiser/vim-code-dark'
"Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'jaxbot/semantic-highlight.vim'

call plug#end()

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" color theme setting
"set background=dark

"let g:solarized_termcolors=256
colorscheme codedark
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]

" tags
set tags=tags;

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set smartindent                " intelligent indentation for c
set completeopt=longest,menu
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.
set tabstop=4
set shiftwidth=4

" mapping here
:let mapleader = "-"
:inoremap jk <esc>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:inoremap { {<esc>a
:inoremap ( (<esc>a
:inoremap [ [<esc>a
:inoremap ) )<esc>a
:inoremap } }<esc>a
:inoremap ] ]<esc>a
" mapping with plugins
:map <F5> :NERDTreeToggle
" add comments
augroup filetype_vim
    :autocmd!
    :autocmd Filetype c nnoremap <buffer> // I//<esc>
    :autocmd Filetype c nnoremap <buffer> d// 0lxx<esc>
    :autocmd Filetype python nnoremap <buffer> // I#<esc>
    :autocmd Filetype python nnoremap <buffer> d// 0lx<esc>
augroup END
