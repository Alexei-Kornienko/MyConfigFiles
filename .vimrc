set nocompatible
set ruler
set showcmd
set incsearch
" Commentend due to NERDTree plugin
"set autochdir " always switch to the current file directory
set backspace=indent,eol,start " make backspace a more flexible

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set clipboard+=unnamed " share windows clipboard
set fileformats=unix,dos,mac " support all three, in this order

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin indent on
set ofu=syntaxcomplete#Complete
set completeopt+=longest

call pathogen#infect()

function! <SID>SetMainDefaults()
  set softtabstop=2
  set tabstop=2
  set shiftwidth=2
  set expandtab
endfunction
      
call <SID>SetMainDefaults() 

call vimprj#init()

function! g:vimprj#dHooks['SetDefaultOptions']['main_options'](dParams)
  call <SID>SetMainDefaults()
endfunction

nmap <silent> <A-Left> :BufSurfBack<CR>
nmap <silent> <A-Right> :BufSurfForward<CR>
nmap <silent> <C-p> :NERDTreeToggle<CR>
