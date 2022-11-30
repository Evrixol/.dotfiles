" Vim plugin loader is "Vim-Plugged"

" Init plugins.
call plug#begin()
	Plug 'joshdick/onedark.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'nfnty/vim-nftables'
call plug#end()

" Vim conf.
"" UI display.
set ruler
set number
syntax on
set laststatus=2
colorscheme onedark

"" Control handling.
set backspace=indent,eol,start
set clipboard=unnamed

"" Indentation and whitespace.
""" Indentation config.
set tabstop=4
set softtabstop=4
set noexpandtab

""" Automatic formatting.
set autoindent
set wrap
set nofoldenable
set textwidth=120

""" Whitespace visibility.
set listchars=space:_,tab:>~ list
