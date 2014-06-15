" global prefix for all custom mappings
let mapleader = "-"

" local prefix for buffer special mappings
let maplocalleader = "-"

" open ~/.vimrc file to edit
" and automatically source ~/.vimrc when you are done with editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
autocmd BufWritePost $MYVIMRC :source $MYVIMRC

" Editor layout {{{
set termencoding=utf-8
set encoding=utf-8
" }}}

" active title and set vim-title to current file's name and absolute path
set title
set titlestring="%:p"

" no more swap or bak files
set noswapfile
set nobackup

" enable filetype detection, plugins and indent
filetype plugin indent on

" easily yank to the end of the line
nnoremap <localleader>y y$

" allow backspace over everything in insert mode
set backspace=indent,eol,start

" tells Vim to create <FILENAME>.un~ file : to contain undo info, so you can
" undo even after you close and reopen a file. 
set undofile

" Highlights the current cursor line
set cursorline

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
