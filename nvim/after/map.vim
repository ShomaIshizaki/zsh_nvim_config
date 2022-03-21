nnoremap <C-P> :PlugInstall<CR>
nnoremap <C-z> <Nop>
" nnoremap <C-M> :PreviewMarkdown<CR>

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
