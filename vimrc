" Most of this was taken from
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Preamble ---------------------------------------------------------------- {{{
filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible
" }}}

colorscheme torte
set lines=50 columns=85

syntax enable
set modelines=0

" tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent

set encoding=utf-8
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2 " Always show the status line
if v:version >= 703
    set relativenumber
    set undofile
    set undodir=~/.vimundo/
    set colorcolumn=80
endif

set wrap
set textwidth=79
set formatoptions=qrn1

" Show invisible characters and use a toggle
set list
set listchars=tab:►\ ,eol:¬,trail:*
nnoremap <leader>l :set list!<CR>

" This will disable the arrow keys while you’re in normal mode to help you
" learn to use hjkl
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
nnoremap <up> :echoe "Use h"<CR>
nnoremap <down> :echoe "Use j"<CR>
nnoremap <left> :echoe "Use h<CR>
nnoremap <right> :echoe "Use k"<CR>
" It also disables the arrow keys in insert mode to force you to get back into
" normal mode the instant you’re done inserting text, which is the “right way”
" to do things.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" It also makes j and k work the way you expect instead of working in some
" archaic “movement by file line instead of screen line” fashion.
nnoremap j gj
nnoremap k gk

" Next, get rid of that stupid goddamned help key that you will invaribly hit
" constantly while aiming for escape:
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" make ; do the same thing as : — it’s one less key to hit every time I want to
" save a file:
nnoremap ; :

" Finally, I really like TextMate’s “save on losing focus” feature. I can’t
" remember a time when I didn’t want to save a file after tabbing away from my
" editor (especially with version control and Vim’s persistent undo):
if has("autocmd")
    autocmd FocusLost * :wa
endif

set noswapfile

" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ...unless they contain at least one capital

" Automatically re-source .vimrc after it's been saved
if has("autocmd")
endif
    autocmd BufWritePost .vimrc source $MYVIMRC
