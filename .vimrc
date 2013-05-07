"Move down/up only a single line when lines wrap
noremap j gj
noremap k gk

"Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

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

""Pathogen plugin manager
"execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"syntax on                   "Enable syntax highlighting
"filetype plugin indent on   "Enable filetype specific indentation and plugins
"
""Required for powerline
"set nocompatible    " Disable vi-compatibility
"set laststatus=2    " Always show the statusline
"set encoding=utf-8  " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'
"
"""Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open=1
"let g:syntastic_echo_current_error=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"
""Solarized colorscheme
""set background=dark            "Solarized option
""let g:solarized_termcolors=16  "Makes solarized work
""let g:solarized_termtrans=1    "Makes solarized work
""colorscheme solarized
"colorscheme wombat256
"
""Show whitespace
"set list lcs=tab:\ \ ,trail:~,extends:>,precedes:<
"
""Show 80 char width
"execute "set colorcolumn=" . join(range(81,335), ',')
":hi ColorColumn ctermbg=black guibg=black
"
""Keybindings
"map <C-e> <esc>:NERDTreeToggle<CR>
"
""Hi-light cursor line
"set cul
"
""gundo toggle binding
"nnoremap <C-u> :GundoToggle<CR>
