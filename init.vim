"4stack neovim setting
"Author: seunghyukcho, shhj1998@postech.ac.kr

source $HOME/.config/nvim/general/settings.vim

call plug#begin('$HOME/.config/nvim/plugins')
  Plug 'tpope/vim-commentary'             "Trigger: gc
  Plug 'jiangmiao/auto-pairs'             "Auto pair for ',), }, ]...
  Plug 'airblade/vim-gitgutter'           "Show git status in vim
  Plug 'mhinz/vim-startify'               "fancy start page for empty vim
  Plug 'overcache/NeoSolarized'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()

source $HOME/.config/nvim/neosolarized/neosolarized.vim
source $HOME/.config/nvim/coc/coc.vim
source $HOME/.config/nvim/coc/extensions.vim
