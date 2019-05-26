set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"Plugin 'ctags.vim'
"Plugin 'taglist.vim'
"Plugin 'MarkdownFootnotes'
"Plugin 'scrooloose/nerdTree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'aperezdc/vim-template'
Plugin 'Yggdroot/indentLine'
"Plugin 'ShowMarks7'
"Plugin 'vim-scripts/Conque-GDB'
Plugin 'airblade/vim-gitgutter'
"Plugin 'jceb/vim-orgmode'
Plugin 'flazz/vim-colorschemes'
Plugin 'mru.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'ericcurtin/CurtineIncSw.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'zivyangll/git-blame.vim'
Plugin 'vim-flake8'
Plugin 'taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'RRethy/vim-illuminate'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'Syntastic'
Plugin 'maralla/validator.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'rhysd/git-messenger.vim'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Git gutter
"autocmd VimEnter * GitGutterSignsDisable
"autocmd VimEnter * GitGutterLineHighlightsDisable
nmap __ :GitGutterLineHighlightsToggle<CR>
nmap _x :<C-u>call gitblame#echo()<CR>
nmap _n :GitGutterNextHunk<CR> zz
nmap _b :GitGutterPrevHunk<CR> zz
nmap _v :GitGutterStageHunk<CR>
nmap _c :GitGutterUndoHunk<CR>

set hlsearch
hi Search cterm=bold ctermbg=white ctermfg=black
set number relativenumber

autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set shiftwidth=4
autocmd BufRead *.py set expandtab

" configure editor with tabs and nice stuff...
set expandtab           " enter spaces when tab is pressed
set tabstop=4          " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

syntax on   			" syntax highlighting
set showcmd 			" show (partial) command in status line

colorscheme dracula

" Status bar
set laststatus=2

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='distinguished'
"let g:airline_theme='papercolor'
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy

let g:flake8_show_in_file=1

:inoremap <F5> <C-R>=strftime("[%c]")<CR>

"set cursorline
hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white
