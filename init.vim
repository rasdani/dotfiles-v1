set number
set splitright
call plug#begin()
	Plug 'bfredl/nvim-ipy'
	Plug 'preservim/nerdtree'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
"if has('win32') || has('win64')
"  Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
"else
"  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
"endif
  Plug 'zchee/deoplete-jedi'
  Plug 'preservim/nerdcommenter'	
call plug#end()


nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>x :vsplit +term<CR>
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert

