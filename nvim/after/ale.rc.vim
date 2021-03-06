" 保存時のみ実行する
let g:ale_lint_on_text_changed = 1
let g:ale_fixers = {
      \ 'javascript': ['prettier'],
      \ 'python': ['autopep8', 'isort'],
	  \}
let g:ale_fix_on_save = 1
let g:ale_change_sign_column_color=1
" 表示に関する設定
let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
