""" Behaviour {{{
set nocompatible
filetype off

" Hide buffers instead of closing
set hidden
set nowrap
set wildmode=list:longest
set wildignore+=*.o,*.pyc,*~,*.hi

" Searching
set ignorecase
set smartcase
set incsearch
""" }}}

""" Editing {{{
syntax on
set autoindent
set shiftround
set tabstop=4
set shiftwidth=4
set textwidth=72
set expandtab
" }}}

""" Display {{{
set title
set termencoding=utf-8
set encoding=utf-8
set showmatch
set ruler

set hlsearch
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" }}}

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/wombat256.vim'

filetype on
colorscheme wombat256mod
hi! Normal ctermbg=NONE guibg=NONE
