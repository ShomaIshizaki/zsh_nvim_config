if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',{'dir': '~/.vim/plugged/vim-plug/autoload'}
  Plug 'prabirshrestha/async.vim'
  Plug 'preservim/nerdtree'
  Plug 'joshdick/onedark.vim'
  Plug 'dense-analysis/ale'
  Plug 'cohama/lexima.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'altercation/vim-colors-solarized'
  Plug 'tpope/vim-surround'
  Plug 'MichaelMure/mdr'
  Plug 'ulwlu/elly.vim'
  Plug 'skanehira/preview-markdown.vim'
  " Plug 'vim-denops/denops.vim'
  if has("nvim")
	  Plug 'neovim/nvim-lspconfig'
	  Plug 'hrsh7th/nvim-compe'
	  Plug 'nvim-lua/completion-nvim'
	  Plug 'nvim-lua/plenary.nvim'
	  Plug 'mfussenegger/nvim-jdtls'
	  Plug 'Shougo/neosnippet-snippets'
	  Plug 'Shougo/neosnippet'
	  Plug 'nvim-telescope/telescope.nvim'
	  Plug 'aca/completion-tabnine', { 'do': './install.sh' }
	  " Plug 'Shougo/ddc.vim'
  endif
call plug#end()
