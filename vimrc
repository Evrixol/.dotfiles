" Vim plugin loader is "Vim-Plugged"

" Init plugins.
call plug#begin()
	Plug 'joshdick/onedark.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'plasticboy/vim-markdown'
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
colorscheme onedark

"" Control handling.
set backspace=indent,eol,start
set nofoldenable
set clipboard=unnamed

"" Indentation and whitespace.
""" Sizing, format, handling.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

""" Whitespace visibility.
set listchars=space:_,tab:>~ list

""" Automatic indent conf.
set noautoindent

"" Miscellanious configuration.
set laststatus=2 " I still don't know what this does.

