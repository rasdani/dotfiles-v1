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


call plug#begin()
"	Plug 'bfredl/nvim-ipy'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'projekt0n/github-nvim-theme'
  Plug 'EdenEast/nightfox.nvim'
	Plug 'preservim/nerdtree'
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
let mapleader=" "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>x :vsplit +term<CR>
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert
nmap <leader>; <plug>NERDCommenterToggle
vmap <leader>; <plug>NERDCommenterToggle
vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>
vnoremap <leader>s <Esc>`.``gvP``P
nnoremap <leader>t <Plug>RestNvim
 "Example config in VimScript
 "NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
"let g:github_function_style = "italic"
"let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

 "Change the "hint" color to the "orange" color, and make the "error" color bright red
"let g:github_colors = {
  "\ 'hint': 'orange',
  "\ 'error': '#ff0000'
"\ }

" Load the colorscheme
" VimScript
"let g:github_comment_style = "NONE"
"let g:github_keyword_style = "NONE"
"let g:github_function_style = "NONE"
"let g:github_variable_style = "NONE"
"colorscheme github_dark
"colorscheme nightfox
"colorscheme tokyonight
highlight Pmenu ctermbg=gray guibg=gray
