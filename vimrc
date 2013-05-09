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
set laststatus=2
set statusline=%-3.3n\ %f%(\ %r%)%(\ %#WarningMsg#%m%0*%)%=(%l,\ %c)\ %P\ [%{&encoding}:%{&fileformat}]%(\ %w%)\ %y\ 
set shortmess+=axrI
set ruler
colorscheme wombat256mod

if has("folding")
	set foldenable
	" Default method. Syntax related ones should be set based on filetype
	set foldmethod=marker
	set foldlevel=1
endif
" }}}

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/wombat256.vim'
