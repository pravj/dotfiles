" global prefix for all custom mappings
let mapleader = "-"

" local prefix for buffer special mappings
let maplocalleader = "-"

" open ~/.vimrc file to edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" automatically source ~/.vimrc when you are done with editing
autocmd BufWritePost $MYVIMRC :source $MYVIMRC

" Handle Comments for different filetypes
"
" Single line : comment current line (normal mode)
augroup singleline_comment
    autocmd!
    autocmd FileType javascript,php nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType python,ruby,coffee nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
augroup END
"
" multiline comments : comment visually selected content (normal mode)
augroup multiline_comment
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>cm `<O"""<esc>`>o"""
    autocmd FileType php,javascript,css nnoremap <buffer> <localleader>cm `<O/*<esc>`>o*/
    autocmd FileType coffee nnoremap <buffer> <localleader>cm `<O###<esc>`>o###
    autocmd FileType ruby nnoremap <buffer> <localleader>cm `<O=begin<esc>`>o=end
augroup END
