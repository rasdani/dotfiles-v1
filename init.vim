set number
set termguicolors
set noswapfile
"set hlsearch
set nohlsearch
set ignorecase
set incsearch
set splitright
set expandtab			" Insert spaces when tab is pressed
set tabstop=2			" and use 4 spaces
set shiftwidth=2		" also for < and >
set scrolloff=4
set sidescrolloff=5


call plug#begin()
"	Plug 'bfredl/nvim-ipy'
  Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
  Plug 'tomasr/molokai'
  "Plug 'sickill/vim-monokai'
	Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
  "Plug 'zchee/deoplete-jedi'
  Plug 'preservim/nerdcommenter'	
  "sudo manually to install tern globally
  "Plug 'ternjs/tern_for_vim', {'do': 'npm install && npm install -g tern' }
  Plug 'ternjs/tern_for_vim'
  Plug 'carlitux/deoplete-ternjs'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'rest-nvim/rest.nvim'
  "disable on remote server
  Plug 'ActivityWatch/aw-watcher-vim'
call plug#end()

call deoplete#custom#option('num_processes', 4)
let g:deoplete#sources#ternjs#tern_bin = '/home/rasdani/.config/nvim/plugged/tern_for_vim/node_modules/tern/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
""let g:tern#command = ["tern"]
let g:tern#command = ["/home/rasdani/.config/nvim/plugged/tern_for_vim/node_modules/tern/bin/tern"]
let g:tern#arguments = [" — persistent"]
""let g:tern#command=['/usr/bin/node', '/home/rasdani/.config/nvim/plugged/tern_for_vim/node_modules/tern/bin/tern', '--no-port-file']

nnoremap <SPACE> <Nop>
"Leader not working in visual mode
"vnoremap <SPACE> <Nop>
"vunmap " "
let mapleader=" "
"Unbind for tmux
map <M-S-j> <Nop>
map <M-S-k> <Nop>

"NERDTREE config
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
let NERDTreeShowHidden=1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>x :vsplit +term<CR>
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert
nmap <leader>; <plug>NERDCommenterToggle
vmap <leader>; <plug>NERDCommenterToggle
vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>
"vnoremap <leader>s <Esc>`.``gvP``P
nnoremap <leader>t <Plug>RestNvim

"Edit and source init.vim
nnoremap <Leader>ii :tabnew $MYVIMRC<CR>
nnoremap <Leader>is :source $MYVIMRC<CR>

"Write, quit and force quit
nnoremap <Leader>q :q<CR>
<<<<<<< HEAD
nnoremap <Leader>w :w<CR>
"nnoremap <Leader>s :s<CR>
"nnoremap <Leader>1 :q!<CR>
nnoremap <Leader>z :wq<CR>
vnoremap <Leader>q :q<CR>
vnoremap <Leader>w :w<CR>
"vnoremap <Leader>s :s<CR>
=======
"nnoremap <Leader>w :w<CR>
nnoremap <Leader>s :w<CR>
"nnoremap <Leader>1 :q!<CR>
nnoremap <Leader>z :wq<CR>
vnoremap <Leader>q :q<CR>
"vnoremap <Leader>w :w<CR>
vnoremap <Leader>s :w<CR>
>>>>>>> refs/remotes/origin/main
"vnoremap <Leader>1 :q!<CR>
vnoremap <Leader>z :wq<CR>

"Shortcuts for tabs
nnoremap <Leader>1 1gt
vnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
vnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
vnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
vnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
vnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
vnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
vnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
vnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
vnoremap <Leader>9 9gt


colorscheme molokai
"colorscheme monokai
highlight Pmenu ctermbg=gray guibg=gray
