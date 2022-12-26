" Use z+o to open a single fold under the cursor.
" Use z+c to close the fold under the cursor.
" Use z+R to open all folds.
" Use z+M to close all folds.
" BASIC SETUP ----------------------------------------------------- {{{

" Set up goes here.
" General
" Show line numbers
set number	
" Break lines at word (requires Wrap lines)
set linebreak	
" Wrap-broken line prefix
set showbreak=+++	
" Line wrap (number of cols)
set textwidth=100
" Highlight matching brace	
set showmatch	
" Enable spell-checking
set spell	

" Highlight all search results
set hlsearch	
" Enable smart-case search
set smartcase	
" Always case-insensitive
set ignorecase	
" Searches for strings incrementally
set incsearch	
" Auto-indent new lines
set autoindent	
" Use spaces instead of tabs
set expandtab	
" Number of auto-indent spaces
set shiftwidth=4	
" Enable smart-indent
set smartindent	
" Enable smart-tabs
set smarttab	
" Number of spaces per Tab
set softtabstop=4	
" Advanced
" Show row and column ruler information
set ruler	
" Number of undo levels
set undolevels=1000
" Backspace behaviour	
set backspace=indent,eol,start	

" update for basic settings
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=25


" Set the commands to save in history default number is 20.
set history=100

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin('~/.vim/plugged')
    
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
    " Type jj to exit insert mode quickly.
    inoremap jj <Esc>
    
    " You can split the window in Vim by typing :split or :vsplit.
    " Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
    nnoremap <c-j> <c-w>j
    nnoremap <c-k> <c-w>k
    nnoremap <c-h> <c-w>h
    nnoremap <c-l> <c-w>l
    
    " Resize split windows using arrow keys by pressing:
    " CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
    noremap <c-up> <c-w>+
    noremap <c-down> <c-w>-
    noremap <c-left> <c-w>>
    noremap <c-right> <c-w><

    " NERDTree specific mappings.
    " Map the F3 key to toggle NERDTree open and close.
    nnoremap <F3> :NERDTreeToggle<cr>

    " Have nerdtree ignore certain files and directories.
    let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.
set cmdheight=5
" Enable the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" If GUI version of Vim is running set these options.
" if has('gui_running')

    " Set the background tone.
    set background=dark

    " Set the color scheme.
    colorscheme molokai

    " Set a custom font you have installed on your computer.
    " Syntax: set guifont=<font_name>\ <font_weight>\ <size>
    set guifont=Monospace\ Regular:h30

    " Display more of the file by default.
    " Hide the toolbar.
    " set guioptions-=T

    " Hide the the left-side scroll bar.
    " set guioptions-=L

    " Hide the the right-side scroll bar.
    " set guioptions-=r

    " Hide the the menu bar.
    " set guioptions-=m

    " Hide the the bottom scroll bar.
    " set guioptions-=b

    " Map the F4 key to toggle the menu, toolbar, and scroll bar.
    " <Bar> is the pipe character.
    " <CR> is the enter key.
    " nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
    "    \set guioptions-=mTr<Bar>
    "    \else<Bar>
    "    \set guioptions+=mTr<Bar>
    "    \endif<CR>

" endif

" }}}


" AUTO FILL CODE ------------------------------------------------------------ {{{

" Auto fill programming code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
    let g:airline_theme='luna'
    "let g:airline#extensions#tabline#enabled = 1 " Enable the list buffers
    "let g:airline_powerline_fonts=DejaVu_Sans_Mono_for_Powerline:h12
    let g:airline_powerline_fonts = 1

"}}}
"
