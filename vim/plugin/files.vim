"if has("autocmd") && exists("+omnifunc")
"  autocmd Filetype *
"  if &omnifunc == "" |
"  	setlocal omnifunc=syntaxcomplete#Complete |
"  endif
"endif


autocmd FileType go setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType rs setlocal shiftwidth=4 tabstop=4
