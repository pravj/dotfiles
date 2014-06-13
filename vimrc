" global prefix for all custom mappings
let mapleader = "-"

" open ~/.vimrc file to edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" automatically source ~/.vimrc when you are done with editing
autocmd BufWritePost $MYVIMRC :source $MYVIMRC
