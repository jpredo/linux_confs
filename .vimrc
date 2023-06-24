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

call plug#end()

" Plugin enables/confs

" Indent guides
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦']
let g:indentLine_setColors = 0

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
set hlsearch
set noswapfile


" auto indent
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

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

" Command mode shit
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum

" Char Highlighting
set list
set listchars=eol:¬,tab:▸-,trail:·,extends:>,precedes:<
:hi SpecialKey ctermfg=darkgray guifg=gray70

" aliases
" Removes trailing spaces
function TrimTrailingWhiteSpace()
	%s/\s*$//
	''
endfunction

" map to :Tws
command Tws call TrimTrailingWhiteSpace()
