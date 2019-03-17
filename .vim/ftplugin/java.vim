" run java with F5, don't forget to 'cd' to the file folder directory
map <F5> :w<CR>:!javac '%' && clear && java '%:r'<CR>
set sw=4 ts=4 sts=4 noexpandtab
