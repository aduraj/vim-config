if exists("did_load_filetypes_userafter")
    finish
endif

let did_load_filetypes_userafter = 1

augroup filetypedetect
    " au! commands to set the filetype go here

    au! BufNewFile,BufRead *.javascripts.erb setf javascript
augroup END
