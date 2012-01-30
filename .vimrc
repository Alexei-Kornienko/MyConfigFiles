set nocompatible
set ruler
set showcmd
set incsearch
" Commentend due to NERDTree plugin
"set autochdir " always switch to the current file directory
set backspace=indent,eol,start " make backspace a more flexible
set nobackup " don't make backup files
set clipboard+=unnamed " share windows clipboard
set fileformats=unix,dos,mac " support all three, in this order
set tabstop=4

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin indent on
set ofu=syntaxcomplete#Complete
set completeopt+=longest

nmap <silent> <A-Left> :BufSurfBack<CR>
nmap <silent> <A-Right> :BufSurfForward<CR>
nmap <silent> <C-p> :NERDTreeToggle<CR>
