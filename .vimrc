" autocomplete with Ctrl+x and Ctrl+o
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set sw=4 ts=4 sts=4 noexpandtab

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set noexpandtab

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

" ignore autocomplete *.class files
set wildignore=*.class

" navigate with mouse
set mouse=a

" so tmux knows
set background=dark

" gitgutter plugin
set updatetime=200
highlight GitGutterAdd		cterm=bold ctermfg=10
highlight GitGutterDelete	cterm=bold ctermfg=9
highlight GitGutterChange	cterm=bold ctermfg=11
highlight GitGutterText		cterm=bold ctermfg=10

highlight DiffAdd		cterm=NONE ctermfg=10 ctermbg=17
highlight DiffDelete	cterm=NONE ctermfg=9 ctermbg=17
highlight DiffChange	cterm=NONE ctermfg=11 ctermbg=17
highlight DiffText		cterm=NONE ctermfg=10 ctermbg=88

" NERDTree plugin
map <C-n> :NERDTreeToggle<CR>

" pathogen.vim plugin
execute pathogen#infect()

" fzf plugin
set rtp+=~/.fzf
map <C-z> :FZF<CR>

" ale plugin
let g:ale_sign_column_always = 1
highlight error ctermbg=88
highlight SpellBad ctermbg=88
highlight todo ctermbg=100
highlight SpellCap ctermbg=100

" ------------ Remaped keys ---------------------- "
" autocomplete curly-braces
"inoremap {<CR> {<CR>}<Esc>ko

" change indent in visual mode
vnoremap > >gv
vnoremap < <gv

" file binding
map <S-z><S-a> :wa<CR>
noremap <C-q> :q<CR>

" split binding
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-Left>	:vertical:resize -1<CR>
map <C-Down>	:resize +1<CR>
map <C-Up>		:resize -1<CR>
map <C-Right>	:vertical:resize +1<CR>

" ------------ Config for filetypes -------------- "
function! PythonConfig()
	" run python with F5
	map <F5> :w<CR>:!clear;python3 '%'<CR>
	map <A-F5> :w<CR>:!clear;python3 -i '%'<CR>
	map <Esc><F5> :w<CR>:!clear;python3 -i '%'<CR>
	setlocal sw=4 ts=4 sts=4 noexpandtab
endfunction

function! JavaConfig()
	" run java with F5, don't forget to 'cd' to the file folder directory
	map <F5> :w<CR>:!javac '%' && clear && java '%:r'<CR>
	setlocal sw=4 ts=4 sts=4 noexpandtab
endfunction

function! HtmlConfig()
	" set tab size to 2 for html files
	setlocal sw=2 ts=2 sts=2
endfunction

augroup extension
	au!
	autocmd BufRead,BufNewFile *.py call PythonConfig()
	autocmd BufRead,BufNewFile *.java call JavaConfig()
	autocmd BufRead,BufNewFile *.html,*.js,*.css call HtmlConfig()
augroup end

augroup postWrite
	au!
	" auto reload vimrc
	autocmd BufWritePost .vimrc source ~/.vimrc
	" groff pdf
	autocmd BufWritePost *.me !groff -Tps -me '%' > '%:r.pdf'
augroup end

