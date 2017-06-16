" .vimrc file
" Author: Ruben Vermeersch <ruben@rocketeer.be>

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
"Plug 'freeo/vim-kalisi'
"Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer'
Plug 'pangloss/vim-javascript'
Plug 'benekastah/neomake'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'leafgarland/typescript-vim'
Plug 'ledger/vim-ledger'
Plug 'mxw/vim-jsx'
"Plug 'othree/yajs.vim'
call plug#end()

filetype plugin indent on

" General Settings:
set autoindent                  " Automatically indent
set autoread                    " Automatically read changed files
set background=dark             " Dark background
set cindent                     " C syntax formatting
set clipboard=unnamed           " yank and paste with the system clipboard
set expandtab                   " Use spaces instead of tabs
set foldmethod=marker           " Collapse marker folds
set formatoptions=qroct         " see :help fo-table for info
set hlsearch                    " Highlight search matches
set ignorecase                  " Ignore search case...
set smartcase                   " ... unless search contains caps
set incsearch                   " Incremental search
set nojoinspaces                " Don't insert double spaces after a period when using gq
set nocompatible                " Don't start in vi compatibility mode
set nopaste                     " Don't paste, we want normal insert mode
set ruler                       " Show postion of pointer
set scrolloff=3                 " show context above/below cursorline
set shiftwidth=4                " 4 spaces tabbing
set showcmd                     " Show command
set showmode                    " Show mode in search
set smartindent                 " In a smarty way
set softtabstop=4               " 4 spaces tabbing
set splitright                  " splitting a window will put it to the right
set tabstop=4                   " 4 spaces tabbing
set ttyfast                     " Fast, nice updating
set wildignore=log/**,dist/**,tmp/**,.tmp/**
set wildmenu                    " show a navigable menu for tab completion
set wildmode=longest,list,full
syntax enable                   " highlight syntax

" Fix sluggish ESC behavior (https://github.com/neovim/neovim/issues/2017)
set ttimeout
set ttimeoutlen=0

" Unlimited persistent undo:
set undofile
set undodir=~/.config/nvim/undo

"
" Keybindings:
"
set pastetoggle=<F2>
map § :nohlsearch<CR>
"let mapleader = ','
map <leader>l :Align
nmap <leader>a :Ack
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :%s/\s\+$//<CR>
nmap <leader>g :ToggleGitGutter<CR>
nmap <leader>c <Plug>Kwbd
nmap <leader>n :cn<CR>
map <silent> <leader>V :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>:exe ":echo 'init.vim reloaded'"<CR>

" plugin settings
"let g:CommandTMaxHeight=20
"let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*"
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0
let g:ctrlp_user_command = [".git", "cd %s && git ls-files -co --exclude-standard"]
let g:ctrlp_match_window = "bottom,order:btt,min:10,max:25,results:100"

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Filetypes
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

"
" Position:
"
set viminfo='10,\"100,:20,%
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Error checks
autocmd! BufWritePost * Neomake
let g:neomake_go_enabled_makers = ['go']
let g:neomake_verbose = 0

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Automatic close char mapping
inoremap  {<CR> {<CR>}<C-O>O

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#disable_auto_complete = 1
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()

" Sane tab behavior
nmap <Tab> >>
nmap <S-Tab> <<

" Go configuration
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" JSX formatting
let g:jsx_ext_required = 0

" HCL formatting
let g:hcl_fmt_autosave = 1

" Map \\ to tests, but save and store position first
autocmd FileType go nmap <leader><leader> :wa<CR>mT:GoTest -short<CR>
" Jump back to last editing position before test run: \'
autocmd FileType go nmap <leader>' `T

" My own colors
set t_Co=256
colorscheme rubenv

" Exit terminal mode with ESC
tnoremap <Esc> <C-\><C-n>
