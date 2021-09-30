" let g:python2_host_prog='/usr/bin/python3'
" let g:python3_host_prog='/Users/ishizakishoma/miniforge3/bin/python3'
"let g:python3_host_prog='/usr/bin/python3'
let g:python3_host_prog='/home/ishizaki/.pyenv/shims/python3'

runtime! /after/*.vim
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
filetype plugin indent on
" nnoremap <C-P> :PlugInstall<CR>
nnoremap <C-F> :FZF <CR>

lua << EOF
local api = vim.api
api.nvim_set_keymap('n','j','gj',{noremap = true})
api.nvim_set_keymap('n','k','gk',{noremap = true})
api.nvim_set_keymap('n','<C-e>',':NERDTree<CR>', {noremap = true})
api.nvim_set_keymap('n','<ESC><ESC>',':nohl<CR>',{noremap = true})
api.nvim_set_keymap('t','<C-[','<C-\\><C-n>',{noremap = true})
api.nvim_set_keymap('i','<C-[','set iminsert=0',{noremap = true})
EOF

" terminalモードで画面下部
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>

syntax enable
set background=dark
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme onedark
" colorscheme solarized

" guifontを設定しないと文字化けになる。terminalで行ったフォントの設定と同様
" 公式サイトではLinuxとmacOSの設定が若干異なるが、Linuxの設定でもmacOSで問題なし
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline\ 12
set encoding=utf-8
  " Can be enabled or disabled
  let g:webdevicons_enable_nerdtree = 1
  " whether or not to show the nerdtree brackets around flags
  let g:webdevicons_conceal_nerdtree_brackets = 1

" フォルダアイコンを表示
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" lexima config
call lexima#add_rule({'char': '<C-i>', 'at': '\%#)', 'leave': 1})
