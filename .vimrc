"Move down/up only a single line when lines wrap
noremap j gj
noremap k gk

"Split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"Mac terminal mouse scrolling
set mouse=a

"Open/close folds with spacebar
nnoremap <space> za

"Tab key settings
set tabstop=4
set shiftwidth=4
set expandtab

"Enable built-in matchit macro
runtime macros/matchit.vim

"Open help in new tab
:cabbrev help tab help

set smartindent
set number "Enable line numbers
set backspace=indent,eol,start
set history=1000
set nowrap "Don't line wrap

"Search settings
set hlsearch    "Highlight words matching search
set incsearch   "Start finding search results as you type
set ic          "Ignore case in searches

"Show whitespace
set list lcs=tab:\ \ ,trail:~,extends:>,precedes:<

"Show 80 char width
execute "set colorcolumn=" . join(range(81,81), ',')
:hi ColorColumn ctermbg=237 guibg=#3c3836

" Set indent amount to 2 for certain filetypes
autocmd Filetype ruby    setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml    setlocal ts=2 sts=2 sw=2
autocmd Filetype html    setlocal ts=2 sts=2 sw=2
autocmd Filetype python  setlocal ts=4 sts=4 sw=4

"""""""""""
" Plugins "
"""""""""""

call plug#begin('~/.vim/vim-plug/')
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] }
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
call plug#end()

" Colorscheme
set termguicolors
let g:gruvbox_invert_selection=0
colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree
map <C-e> <esc>:NERDTreeTabsToggle<CR>

" VIM Ruby
let ruby_operators = 1
let ruby_pseudo_operators = 1
let ruby_fold = 1
