" autocomplete with Ctrl+x and Ctrl+o
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set sw=4 ts=4 sts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set noexpandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable statusline
set laststatus=2
" change statusline color
hi statusline	ctermbg=0	ctermfg=250
hi statuslinenc	ctermbg=15	ctermfg=240
" show file full path in statusline
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" add border at 80 column
set colorcolumn=80
highlight colorcolumn ctermbg=235

" alvan/vim-closetag
let g:closetag_filetypes='html,xhtml,phtml'

" Set the minimal number of lines under the cursor
set scrolloff=2

" Set so vim search (/ or ?) be case insensitive
set ignorecase

" Set hybrid line number and colors
set number relativenumber
highlight LineNR ctermfg=yellow
highlight CursorLineNR ctermfg=214

" Enable autocomplete
set wildmode=longest,list,full

" Set new split below or right
set splitbelow splitright

" function to remove whitespace
function! RmSpace()
	" Save cursor position
	let l:save = winsaveview()
	" Remove whitespace
	%s/\s\+$//
	" Move cursor to original position
	call winrestview(l:save)
endfunction
function! RmSpaceC()
	let l:save = winsaveview()
	%s/\s\+$//c
	call winrestview(l:save)
endfunction

" autocomplete curly-braces
inoremap {<CR> {<CR>}<Esc>ko<Tab>

" ignore autocomplete *.class files
set wildignore=*.class

function! PythonConfig()
	" run python with F5
	map <F5> :w<CR>:!clear;python3 '%'<CR>
	map <A-F5> :w<CR>:!clear;python3 -i '%'<CR>
	map <Esc><F5> :w<CR>:!clear;python3 -i '%'<CR>
endfunction

function! JavaConfig()
	" run java with F5, don't forget to 'cd' to the file folder directory
	map <F5> :w<CR>:!javac '%' && clear && java '%:r'<CR>
endfunction

function! HtmlConfig()
	" set tab size to 2 for html files
	setlocal sw=2 ts=2 sts=2
endfunction

augroup extension
	autocmd BufRead,BufNewFile *.py call PythonConfig()
	autocmd BufRead,BufNewFile *.java call JavaConfig()
	autocmd BufRead,BufNewFile *.html,*.js,*.css call HtmlConfig()
augroup end

" save file
map <S-z><S-a> :wa<CR>
autocmd BufWritePost .vimrc source ~/.vimrc
