" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')

" File management and navigation
Plug 'preservim/nerdtree'                                " File browser

" Code and text editing enhancements
Plug 'neoclide/coc.nvim', {'branch': 'release'}          " Auto-completion engine
Plug 'jiangmiao/auto-pairs'                              " Auto-pairing of brackets and quotes
Plug 'tpope/vim-surround'                                " Manipulate surround characters easily

" Web development plugins
Plug 'othree/html5.vim'                                  " HTML5 syntax and omnicomplete functions
Plug 'mattn/emmet-vim'                                   " High-speed HTML and CSS workflow

" Color and appearance enhancements
Plug 'ap/vim-css-color'                                  " Show color codes in their respective colors

" Fuzzy finding
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'                                  " Fzf: Vim integration

" Additional useful plugins
Plug 'ludovicchabant/vim-gutentags'                      " Automatic tags management
Plug 'preservim/tagbar'                                  " Sidebar with structure of the file

" Close plugin declarations
call plug#end()

" Basic settings
set number                           " Show line numbers
set relativenumber                   " Show relative line numbers adjacent to absolute ones
set noswapfile                       " Disable swap files
set undodir=~/.nvim/undodir          " Specify directory for undo files
set undofile                         " Enable persistent undo
set ignorecase                       " Searches are case insensitive
set smartcase                        " Searches are case sensitive if contain uppercase letters
set tabstop=4						 " Tabs are 4 spaces
set shiftwidth=4					 " Autotabs are also 4 spaces
set nobackup                       " Do not create a backup file
set nowritebackup                  " Do not write a backup file before overwriting a file
set noswapfile                     " Disable swap file creation


" Key mappings
nnoremap <C-n> :NERDTreeToggle<CR>   " Toggle NERDTree with Ctrl-n

" Coc.nvim settings
let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-tsserver']

" Syntax highlighting and color scheme
syntax enable                        " Enable syntax highlighting
colorscheme default                  " Set default color scheme

" Yank highlighting - I particularly need a notification that I am Yanking
  augroup YankHighlight
  autocmd!
  autocmd TextYankPost * if v:event.operator == 'y' && v:event.regname == ''
    \ | echo 'Yanked ' . join(v:event.regcontents, "\n") . ' to register ' . v:event.regname
    \ | endif
augroup END

