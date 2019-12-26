map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

 augroup filetype
 	au! BufRead,BufNewFile *.proto setfiletype proto
 augroup end

colorscheme koehler
set colorcolumn=120
set spell
