" PREFERENCES
set number
set showmatch   	" Show matching braces
set visualbell		" Disable audio bell
set hlsearch		" Highlight all search results
set smartcase		" Enables smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Search strings incrementally

set wrap
set ruler
set autoindent		" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent		" Enables smart indentation
set smarttab		" Enables smart tabs
set softtabstop=4	" 4 spaces per tab
set tabstop=4		" 4 spaces per tab
set laststatus=2
set incsearch
set hlsearch

" Color Scheme
colorscheme molokai

" Allow files to be saved as root when forgetting to start Vim using sudo.
command! -nargs=0 Sw w !sudo tee % > /dev/null

" Plugins
call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'wlangstroth/vim-racket'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tommcdo/vim-lion'
Plug 'Shirk/vim-gas'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Syntax highlighting
syntax on

" Position in code
set encoding=utf-8

" Function to set tab width to n spaces
function! SetTab(n)
    let &l:tabstop=a:n
    let &l:softtabstop=a:n
    let &l:shiftwidth=a:n
    set expandtab
endfunction

command! -nargs=1 SetTab call SetTab(<f-args>)

" Function to trim extra whitespace in whole file
function! Trim()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

set t_Co=256

" Mouse support
set mouse=a

" Map F8 to Tagbar
nmap <~> :TagbarToggle<CR>

" disable backup files
set nobackup
set nowritebackup

" no delays!
set updatetime=1000

set cmdheight=1
set shortmess+=c
set signcolumn=yes
