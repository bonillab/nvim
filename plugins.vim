call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'preservim/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
call plug#end()
