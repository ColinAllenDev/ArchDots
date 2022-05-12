" Plugins "{{{{
" ------------------------------------------------
call plug#begin()
	Plug 'neovim/nvim-lspconfig'
call plug#end()

" Configurations "{{{{
" ------------------------------------------------
autocmd!
" colorscheme blahg
scriptencoding utf-8
syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set ruler
set visualbell
set lazyredraw
set wrap
set nosc noru nosm
set t_BE=

" Functions "{{{{
" ------------------------------------------------
function! SetTab(n)
	let &l:tabstop=a:n
	let &l:softtabstop=a:n
	let &l:shiftwidth=a:n
	set expandtab
endfunction
command -nargs=1 SetTab call SetTab(<f-args>)

function! ToggleScheme(n)
	if (a:n == 1)
		colorscheme evening
	else
		colorscheme default
	endif
endfunction
command -nargs=1 ToggleScheme call ToggleScheme(<f-args>)

" Imports "{{{{
" ------------------------------------------------
runtime ./maps.vim

" Syntax Theme "{{{{
" ------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
	syntax enable
	set termguicolors
	set winblend=0
	set wildoptions=pum
	set pumblend=5
	set background=dark
	"colorscheme palenight
endif
