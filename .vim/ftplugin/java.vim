" auto compile java file on save
set sw=4 ts=4 sts=4 noexpandtab
" run java with F5, don't forget to 'cd' to the file folder directory
map <F4> :w<CR>:!javac *.java<CR>
map <F5> :w<CR>:!javac '%' && clear && java '%:r'<CR>
map <Leader><F5> :w<CR>:!javac '%' && clear && java '%:r' 

map <Leader>pr oSystem.out.println(
vmap <Leader>pr yoSystem.out.println(<Esc>pA;<Esc>$
map <Leader>main ipublic static void main(String[] args) {<CR>
map <Leader>cls ipublic class<Esc>:put=expand('%:r')<CR>kJA {<CR>
map <Leader>class ipublic class<Esc>:put=expand('%:r')<CR>kJA {<CR>public static void main(String[] args) {<CR>
