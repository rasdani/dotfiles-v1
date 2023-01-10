call plug#begin()
    Plug 'asvetliakov/vim-easymotion'
call plug#end()

let mapleader=" "

"VSCode specific
noremap <leader>s <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
noremap <leader>q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
" toggle sidebar
noremap <leader>n <Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
" toggle terminal
noremap <leader>x <Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>
" map leader r to redo
noremap <leader>r <Cmd>call VSCodeNotify('redo')<CR>
" map leader t to open new tab
noremap <leader>t <Cmd>call VSCodeNotify('workbench.action.files.newUntitledFile')<CR> 
" map capital J to scroll down
noremap J <Cmd>call VSCodeNotify('editorScroll', {'to': 'down', 'by': 'line', 'value': 10, 'revealCursor': v:true})<CR>
" map capital K to scroll up
noremap K <Cmd>call VSCodeNotify('editorScroll', {'to': 'up', 'by': 'line', 'value': 10, 'revealCursor': v:true})<CR>
" map leader j to join lines
noremap <leader>j <Cmd>call VSCodeNotify('editor.action.joinLines')<CR>
