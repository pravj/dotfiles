" here we go \m/
set nocompatible

" global prefix for all custom mappings
let mapleader = ","

" open ~/.vimrc file to edit
" and automatically source ~/.vimrc when you are done with editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
autocmd BufWritePost $MYVIMRC :source $MYVIMRC


"""""""""""""""""""""""""""""""""""""""""
" Pathogen support and different addons "
"""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

" enable syntax, filetype detection, plugins and indent
syntax on
filetype plugin indent on


"""""""""""""""""
" Editor layout "
"""""""""""""""""
set termencoding=utf-8
set encoding=utf-8

" vim-title shows current file's name and absolute path
set title
set titlestring="%:p"


"""""""""""""""""""
" Editing related "
"""""""""""""""""""

" line number improve your confidence
set number

" allow backspace over everything in insert mode
set backspace=indent,eol,start

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


"""""""""""""""""""""""""""""
" no more swap or bak files "
"""""""""""""""""""""""""""""
set noswapfile
set nobackup


""""""""""""""""""""
" Helper functions "
""""""""""""""""""""

" Show highlighting groups for current word : function from vimcast.org
nmap <c-s-p> :call <SID>SynStack()<cr>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


"""""""""""""""""""
" Custom mappings "
"""""""""""""""""""

" easily yank to the end of the line
nnoremap <localleader>y y$

" you accidently press <F1> instead of <ESC>
" and there will be some disturbance, want this : obvi NO
" mapped in visual and insert mode : bcz maybe you want <F1> in normal
inoremap <f1> <esc>
vnoremap <f1> <esc>  
