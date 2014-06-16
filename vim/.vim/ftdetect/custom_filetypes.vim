" autocmd group for custom filetypes
augroup custom_filetypes
    autocmd!
    autocmd BufRead,BufNewFile *.coffee set filetype=coffee
augroup END
