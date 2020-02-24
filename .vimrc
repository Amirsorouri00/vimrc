map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

 augroup filetype
 	au! BufRead,BufNewFile *.proto setfiletype proto
 augroup end

colorscheme koehler
set colorcolumn=100
set spell
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
autocmd StdinReadPre * let s:std_in=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" bundle of fzf-based commands and mappings extracted from my .vimrc to address such needs
Plugin 'junegunn/fzf.vim'

" editor be colorful, life be joyful
Plugin 'itchyny/landscape.vim'

" syntax highlighting
Plugin 'sheerun/vim-polyglot'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'jreybert/vimagit'
" All of your Plugins must be added before the following line
call vundle#end()            " required
