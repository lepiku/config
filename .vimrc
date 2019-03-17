" enabla plugins and autoindent
filetype plugin indent on
set autoindent
set omnifunc=syntaxcomplete#Complete

" enable syntax highlighting
syntax enable

" set defautl tabs to have 4 spaces
set sw=4 ts=4 sts=4 noexpandtab

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

"" enable statusline (disabled because vim-airline)
"set laststatus=2
"" show file full path in statusline
"set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"" change statusline color
"hi StatusLine	ctermbg=0	ctermfg=250
"hi StatusLineNC	ctermbg=15	ctermfg=240

" add border at 80 column
set colorcolumn=80

" Set the minimal number of lines under the cursor
set scrolloff=2

" Set so vim search (/ or ?) be case insensitive
set ignorecase smartcase

" Set hybrid line number
set number relativenumber

" Enable autocomplete
set wildmode=longest,list,full

" Set new split below or right
set splitbelow splitright

" ignore autocomplete *.class files
set wildignore=*.class

" navigate with mouse
set mouse=a

" ------------ Highlight/Color/Theme ------------- "
"colorscheme default
set background=dark

" 80 char border
highlight colorcolumn ctermbg=235

" hybrid line number
highlight LineNR ctermfg=yellow
highlight CursorLineNR ctermfg=214

" vertical split
highlight VertSplit ctermfg=0 ctermbg=123

" comment color
highlight Comment ctermfg=248

" vim-code-dark
"colorscheme codedark

" ------------ Plugin Settings ------------------- "
" pathogen.vim plugin
execute pathogen#infect()

" vim-code-dark plugin
let g:airline_theme = 'codedark'

" gitgutter plugin
set updatetime=200
highlight GitGutterAdd		cterm=bold ctermfg=2
highlight GitGutterDelete	cterm=bold ctermfg=1
highlight GitGutterChange	cterm=bold ctermfg=3
highlight GitGutterText		cterm=bold ctermfg=5

" vim-fugitive plugin
highlight DiffAdd	cterm=NONE ctermbg=17
highlight DiffDelete	cterm=NONE ctermbg=17 ctermfg=1
highlight DiffChange	cterm=NONE ctermbg=17
highlight DiffText	cterm=NONE ctermbg=52
" for vim-code-dark
"highlight DiffAdd		cterm=NONE ctermbg=17
"highlight DiffDelete	cterm=NONE ctermbg=233 ctermfg=1
"highlight DiffChange	cterm=NONE ctermbg=236
"highlight DiffText		cterm=NONE ctermbg=232

" fzf plugin
set rtp+=~/.fzf

" ale plugin
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
highlight error ctermbg=88
highlight SpellBad ctermbg=88
highlight todo ctermbg=100
highlight SpellCap ctermbg=100

" airline plugin
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v'
let g:airline_symbols = {'space': ' ', 'paste': 'PASTE', 'maxlinenr': '',
			\'notexists': 'Ɇ', 'crypt': '🔒', 'linenr': '', 'readonly': '',
			\'spell': 'SPELL', 'modified': '+', 'keymap': 'Keymap: ',
			\'ellipsis': '...', 'branch': '', 'whitespace': '☲'}

" ------------ Mapping / Remaped keys ------------ "
" change leader key
let mapleader=","

" change indent in visual mode
vnoremap > >gv
vnoremap < <gv

" file binding
noremap <S-z><S-a> :wa<CR>
noremap <C-q> :q<CR>

" split binding
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" resize splits with arrow keys
noremap <C-Left>	:vertical:resize -1<CR>
noremap <C-Down>	:resize +1<CR>
noremap <C-Up>		:resize -1<CR>
noremap <C-Right>	:vertical:resize +1<CR>

" FZF
noremap <C-z> :FZF<CR>

" NERDTree plugin
noremap <C-n> :NERDTreeToggle<CR>

" ALE warp to next error
nnoremap <Leader>j :ALENextWrap<CR>
nnoremap <Leader>k :ALEPreviousWrap<CR>

" ------------ Config for filetypes -------------- "

augroup extension
au!
	" python force indentation
	autocmd BufRead,BufNewFile *.py setlocal sw=4 ts=4 sts=4 noexpandtab
	" html,jss force indentation
	autocmd BufRead,BufNewFile *.html,*.js setlocal sw=2 ts=2 sts=2 expandtab
augroup end

augroup postWrite
	au!
	" auto reload vimrc
	autocmd BufWritePost .vimrc source ~/.vimrc
	" groff pdf
	autocmd BufWritePost *.me !groff -Tps -me '%' > '%:r.pdf'
	" xrdb autoload .Xresources
	autocmd BufWritePost .Xresources silent !xrdb ~/.Xresources
augroup end
