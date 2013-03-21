set nocompatible
set ruler
set showcmd
set incsearch
set backspace=indent,eol,start " make backspace a more flexible

call pathogen#infect()

set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set previewheight=2

set clipboard+=unnamedplus " share windows clipboard
set fileformats=unix,dos,mac " support all three, in this order

set mouse=n

if &t_Co > 2 || has("gui_running")
  syntax on
  set background=dark
  colorscheme solarized
  set hlsearch
endif

filetype plugin indent on
set ofu=syntaxcomplete#Complete
set completeopt+=longest

nnoremap * *N

function! <SID>SetMainDefaults()
  set softtabstop=4
  set tabstop=4
  set shiftwidth=4
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
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <C-f>o :FufFile<CR>
