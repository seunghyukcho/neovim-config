filetype plugin on

let g:mapleader = ","           "set leader key to comma

set number                      "line numbers
set hlsearch                    "highlight searching result
set showmatch                   "highlight matched bracket ()

set history=1000                "store :cmd history
set title                       "change the terminal title
set cul                         "highlight cursor line
set wrap

syntax sync minlines=200        "For speed up vim
set clipboard=unnamed           "yank, paste to system clipboard

set nowritebackup
set noswapfile
set nobackup
set nowb

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

nmap <leader>l <Esc>:set list!<CR>
highlight SpecialKey cterm=None ctermfg=grey
map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>
set listchars=tab:>·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
set fillchars+=vert:\│          "Make vertical split separator full line

silent !mkdir $HOME/.config/nvim/backups > /dev/null 2>&1
set undodir=$HOME/.config/nvim/backups
set undofile
