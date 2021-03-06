syntax on                           " Syntax highlighting
filetype plugin indent on           " Detect file types

set autoindent                      " Indent at the same level as previous line
set autoread                        " Read file changes made outside of vim
set autowrite                       " Write files when leaving a modified buffer
set background=dark                 " Fixes issues with incorrect colours in tmux
set backspace=indent,eol,start      " Allow backspace over listed items
set cursorline                      " Enable cursor row highlighting
set display=lastline                " Show as much as possible of last line
set encoding=utf-8                  " Default encoding
set expandtab                       " Expand tabs into spaces
set fileformats=unix,dos,mac        " File formats priority
set history=10000                   " Maximum history entries
set hlsearch                        " Highlight search terms
set ignorecase                      " Case insensitive search by default
set incsearch                       " Incremental search
set laststatus=2                    " Always display status line
set number                          " Show line numbers
set report=0                        " Always report number of lines changed by commands
set rnu                             " Show relative line numbers
set ruler                           " Show ruler
set shiftwidth=4                    " Use 4 spaces for shifting
set shortmess=atOI                  " Hides empty vim message
set showcmd                         " Show partial commands
set showmode                        " Show current mode
set smartcase                       " Case sensitive search when uppercase present
set smarttab                        " Smart tabs
set softtabstop=4                   " Backspace deletes indents
set t_Co=256                        " Use 256 colors
set tabstop=4                       " Show tabs with 4 spaces width
set ttyfast                         " Faster redrawing
set wrap                            " Wrap long lines

set nomodeline                      " Disable modelines
set modelines=0

" Disable entering visual mode on mouse selection
set mouse-=a

" Use system clipboard if available (see:
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard)
if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

" Use a single directory for all swap files (see:
" https://vi.stackexchange.com/questions/177/what-is-the-purpose-of-swap-files) 
set directory^=$HOME/.vim/tmp//

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

:hi CursorLine cterm=NONE ctermbg=238

" Remove all trailing whitespaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Automatically leave insert mode after 'updatetime' milliseconds of
" inactivity (default is 4000 ms)
au CursorHoldI * stopinsert

" set 'updatetime' to 15 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=15000
au InsertLeave * let &updatetime=updaterestore

