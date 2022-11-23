" Vim plugin loader is "Vim-Plugged"

" Init plugins.
call plug#begin()
"	Plug 'tomasr/molokai'
	Plug 'preservim/nerdtree'
call plug#end()

" NERDTree plugin conf.
"" Hotkeys
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"" Miscellanious conf.
let NERDTreeShowHidden=1

" Vim conf.
"" UI display.
set ruler
set number
syntax on
set laststatus=2

"" Control handling.
set backspace=indent,eol,start
set clipboard=unnamed

"" Indentation and whitespace.
""" Sizing, format, handling.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

""" Whitespace visibility.
set listchars=space:_,tab:>~ list

""" Automatic formatting.
set autoindent
set nofoldenable
set textwidth=120

