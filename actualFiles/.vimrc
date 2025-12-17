syntax on

set fileformat=unix
set encoding=UTF-8
scriptencoding UTF-8

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set smartindent

set smarttab
set noexpandtab

set nowrap

set list
set listchars=tab:⋮\ ,eol:↩,precedes:↤,extends:↦

set cursorline
" Clear CursorLine in Windows terminals. (This file is used in "Windows sub-
" system for Linux" (WSL), GNU/Linux native, MS-DOS command line / terminal,
" and Windows native Powershell.
if has ("unix")
	let lines = readfile("/proc/version")
	if lines[0] =~ "Microsoft"
		highlight clear CursorLine
	endif
endif

set ruler
set number
set showcmd

set noswapfile
set clipboard=unnamed

set ignorecase
set smartcase

set colorcolumn=81
set laststatus=2

set clipboard^=unnamedplus
set backspace=indent,eol,start


