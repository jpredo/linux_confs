" .vimrc
" Author: jpredo

" Autoload vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()

" Allows search highlighting and realtime substitution
Plug 'https://github.com/markonm/traces.vim'

" Indent guides
Plug 'yggdroot/indentline'

" Colourscheme
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Plugin enables/confs

" Indent guides
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '┆']
let g:indentLine_setColors = 0

" Colorscheme
set background=dark
colorscheme solarized

" Synax Highlighting
if has('syntax')
	syntax on
endif

" QOL
set showcmd
set nostartofline
set showmatch
set showmode
set visualbell

" auto indent
set autoindent

" Cursor Changes
" 0  -> blinking block.
" 1  -> blinking block (default).
" 2  -> steady block.
" 3  -> blinking underline.
" 4  -> steady underline.
" 5  -> blinking bar (xterm).
" 6  -> steady bar (xterm).

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Command mode <tab> completion
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum
