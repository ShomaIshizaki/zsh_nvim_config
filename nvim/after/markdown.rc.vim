" let g:vim_markdown_folding_style_pythonic = 0
let g:previm_enable_realtime = 1
let g:previm_open_cmd = 'firefox'
let g:vim_markdown_folding_disabled = 1

lua << EOF
vim.api.nvim_set_keymap('n','<C-P>',':PrevimOpen<CR>',{noremap = true})
EOF
