"Set leader key
let mapleader=" "

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
set list lcs=tab:⇒\⇒,trail:·,extends:»,precedes:«

"Show 80 char width
execute "set colorcolumn=" . join(range(81,81), ',')
:hi ColorColumn ctermbg=237 guibg=#3c3836

" Set indent amount to 2 for certain filetypes
autocmd Filetype ruby       setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml       setlocal ts=2 sts=2 sw=2
autocmd Filetype html       setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python     setlocal ts=4 sts=4 sw=4
autocmd Filetype go         setlocal ts=4 sts=4 sw=4 list lcs=tab:\ \ ,trail:·,extends:»,precedes:«

" Custom mappings
map <Leader>fs :w<CR>
map <Leader>wd :q<CR>

"""""""""""
" Plugins "
"""""""""""

call plug#begin('~/.vim/vim-plug/')
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'vim-ruby/vim-ruby'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Plug 'vim-syntastic/syntastic'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'derekwyatt/vim-scala'
Plug 'thoughtbot/vim-rspec'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'hashivim/vim-terraform'
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
let g:airline_section_b = ''
let g:airline_section_z = ''


" NERDTree
map <C-e> <esc>:NERDTreeTabsToggle<CR>
map <Leader>pt <esc>:NERDTreeTabsToggle<CR>
map <Leader>pf <esc>:NERDTreeFind<CR>


" fzf
let $FZF_DEFAULT_COMMAND = 'rg --files'

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)

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
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Ale
let g:ale_python_mypy_executable = 'pipenv'

" EasyMotion
" Only require a single Leader key press to use (2 presses is default)
map <Leader> <Plug>(easymotion-prefix)

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" Let 'v' match 'v' and 'V'; 'V' only matches 'V'
let g:EasyMotion_smartcase = 1

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" `s{char}{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)

map <Leader>b :Buffers<Cr>


" rust.vim
" let g:rustfmt_autosave = 1


" vim-rspec
map <Leader>tc :call RunCurrentSpecFile()<CR>
map <Leader>ts :call RunNearestSpec()<CR>
map <Leader>tl :call RunLastSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>
