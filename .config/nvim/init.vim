set nocompatible            " disable compatibility to old-time vi
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the
                            " right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line
                            " just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
"set mousescroll=ver:2,hor:2
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
set nowrap

call plug#begin()
    Plug 'joshdick/onedark.vim'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "
    " Install the following extensions using CoC:
    "
    " - coc-spell-checker
    " - coc-pyright
    " - coc-java
    "
    "

    Plug 'vim-airline/vim-airline'
   
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    Plug 'preservim/nerdcommenter'
    Plug 'Yggdroot/indentLine'

call plug#end()


" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark
filetype plugin on

noremap <silent> <C-f> :Rg<CR>
let g:indentLine_char = '│' "'┊'
