let g:python3_host_prog='/home/ishizaki/.pyenv/shims/python3'

" set rtp+=/home/ishizaki/.config/nvim/after runtimepathの追加
set rtp+=$HOME/.vim/plugged/glow
runtime! /after/*.vim
runtime! /callPlug.vim
set number
set nowrap
set title
set tabstop=4
set shiftwidth=4
set noswapfile
set splitbelow
set smartindent "オートインデント
set wildmenu
set wildmode=full
set cursorline
set cursorcolumn
set backspace=2"
set foldmethod=manual
set ttimeoutlen=0
set timeoutlen=1000
set completeopt=menuone,noselect
set t_Co=256
set laststatus=2
set shortmess+=c
set splitright
set signcolumn=yes
filetype plugin indent on
set background=dark
set termguicolors
colorscheme elly
" guifontを設定しないと文字化けになる。terminalで行ったフォントの設定と同様
" 公式サイトではLinuxとmacOSの設定が若干異なるが、Linuxの設定でもmacOSで問題なし
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline\ 12
set encoding=utf-8
