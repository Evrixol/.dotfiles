" Vim plugin loader is "Vim-Plugged"

" Init plugins.
call plug#begin()
	Plug 'joshdick/onedark.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'plasticboy/vim-markdown'
call plug#end()

PlugUpdate

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
set noexpandtab
set tabstop=4
set autoindent
"" Miscellanious conf.
set laststatus=2
