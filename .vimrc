"Move down/up only a single line when lines wrap
noremap j gj
noremap k gk

"Open/close folds with spacebar
nnoremap <space> za

"Tab key settings
set tabstop=4
set shiftwidth=4
set expandtab


"Split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"Open help in new tab
:cabbrev help tab help

set smartindent
inoremap # X#
set number                          "Enable line numbers
set backspace=indent,eol,start
set history=1000
set nowrap                          "Don't line wrap

"Search settings
set hlsearch    "Highlight words matching search
set incsearch   "Start finding search results as you type
set ic          "Ignore case in searches

"Pathogen plugin manager
execute pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on                   "Enable syntax highlighting
filetype plugin indent on   "Enable filetype specific indentation and plugins

"Required for powerline
set nocompatible    " Disable vi-compatibility
set laststatus=2    " Always show the statusline
set encoding=utf-8  " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'

""Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open=1
"let g:syntastic_echo_current_error=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'

"Solarized colorscheme
"set background=dark            "Solarized option
"let g:solarized_termcolors=16  "Makes solarized work
"let g:solarized_termtrans=1    "Makes solarized work
"colorscheme solarized
colorscheme molokai

"Show whitespace
set list lcs=tab:\ \ ,trail:~,extends:>,precedes:<

"Show 80 char width
execute "set colorcolumn=" . join(range(81,81), ',')
:hi ColorColumn ctermbg=black guibg=black

"Keybindings
"map <C-e> <esc>:NERDTreeToggle<CR>
map <C-e> <esc>:NERDTreeTabsToggle<CR>

"Hi-light cursor line
"set cul

"gundo toggle binding
nnoremap <C-u> :GundoToggle<CR>

"Mac terminal mouse scrolling
set mouse=a

"Set .conf file to use nginx syntax hi-lighting
au BufRead,BufNewFile *.conf set filetype=nginx
au BufNewFile,BufRead *.boo set filetype=boo

"Allow Vim to inspect the first ten lines of a file for modelines
set modelines=10

"CtrlP stuff
set runtimepath^=~/.vim/bundle/ctrlp.vim

"" CTRLP Settings

" Custom file list command for ctrlp, super fast!
let g:ctrlp_user_command =
  \ ['.git', 'cd %s && git ls-files . -co --exclude-standard']

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" ctrl p window at top of screen
let g:ctrlp_match_window_bottom = 0

"" Use Ag (silver surfer) instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Set indent amount to 2 for Ruby files
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
