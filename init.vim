" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')

" File management and navigation
Plug 'preservim/nerdtree'                                " File browser

" Code and text editing enhancements
Plug 'neoclide/coc.nvim', {'branch': 'release'}          " Auto-completion engine
Plug 'jiangmiao/auto-pairs'                              " Auto-pairing of brackets and quotes
Plug 'tpope/vim-surround'                                " Manipulate surround characters easily
Plug 'dense-analysis/ale'                                " Asynchronous linting

" Web development plugins
Plug 'othree/html5.vim'                                  " HTML5 syntax and omnicomplete functions
Plug 'mattn/emmet-vim'                                   " High-speed HTML and CSS workflow

" Color and appearance enhancements
Plug 'ap/vim-css-color'                                  " Show color codes in their respective colors

" Fuzzy finding
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'                                  " Fzf: Vim integration

" Formatting and beautification
Plug 'prettier/vim-prettier', {'do': 'yarn install'}     " Prettier plugin for auto-formatting

Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/tagbar'


" Use Tab and Shift-Tab to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use Enter to select the completion item
inoremap <expr> <CR>    pumvisible() ? coc#_select_confirm() : "\<CR>"



" Close plugin declarations
call plug#end()

" Basic settings
set number                           " Show line numbers
set relativenumber                   " Show relative line numbers adjacent to absolute ones
set noswapfile                       " Disable swap files
set backup                           " Enable backups
set undodir=~/.nvim/undodir          " Specify directory for undo files
set undofile                         " Enable persistent undo
set ignorecase                       " Searches are case insensitive
set smartcase                        " Searches are case sensitive if contain uppercase letters
set tabstop=4
set shiftwidth=4


" Key mappings
nnoremap <C-n> :NERDTreeToggle<CR>   " Toggle NERDTree with Ctrl-n

" Coc.nvim settings
let g:coc_global_extensions = ['coc-json', 'coc-python', 'coc-tsserver']

" Syntax highlighting and color scheme
syntax enable                        " Enable syntax highlighting
colorscheme default                  " Set default color scheme

" For global installation
let g:prettier#exec_cmd_path = './node_modules/.bin/prettier'

augroup YankHighlight
  autocmd!
  autocmd TextYankPost * if v:event.operator == 'y' && v:event.regname == ''
    \ echo 'Yanked ' . v:event.regcontents[0] . ' to register ' . v:event.regname
  endif
augroup END

