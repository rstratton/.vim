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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Colorscheme
set termguicolors
let g:gruvbox_invert_selection=0
colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

" NERDTree
map <C-e> <esc>:NERDTreeTabsToggle<CR>

" fzf
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Rg<Cr>


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
