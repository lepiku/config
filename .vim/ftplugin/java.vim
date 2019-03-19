set sw=4 ts=4 sts=4 noexpandtab
" run java with F5, don't forget to 'cd' to the file folder directory
map <F5> :w<CR>:!javac '%' && clear && java '%:r'<CR>
map <Leader><F5> :w<CR>:!javac '%' && clear && java '%:r' 

map <Leader>pr aSystem.out.println(
vmap <Leader>pr yOSystem.out.println(<Esc>pA;<Esc>
map <Leader>main ipublic static void main(String[] args) {<CR>
map <Leader>cls iclass<Esc>:put=expand('%:r')<CR>kJA {<CR>
map <Leader>class iclass<Esc>:put=expand('%:r')<CR>kJA {<CR>public static void main(String[] args) {<CR>
