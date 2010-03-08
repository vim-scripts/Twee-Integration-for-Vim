" markdown filetype file
if exists("did\_load\_filetypes")
	finish
endif

augroup twee
	au! BufRead,BufNewFile *.tw   setfiletype twee 
	autocmd BufRead,BufNewFile *.tw    compiler twee
augroup END
