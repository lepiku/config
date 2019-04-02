# alias directories
alias ..='cd ..'
alias dir='ls -lah'

# remove to trash = rmtt
alias rmtt="gio trash"

# kawung functions
alias kawung='ssh muhammad.oktoluqman@kawung.cs.ui.ac.id'

# update ubuntu
alias update='sudo apt update && apt list -u && sudo apt upgrade'

# ranger file manager
alias ranger='python3 /home/dimas/Programs/ranger/ranger.py'

# youtube-dl
alias dlyoutube="youtube-dl -f 'bestvideo[height<=1080]+bestaudio[ext=m4a]/best' --merge-output-format mp4"

# open vimrc on .vim
alias vimrc='cd ~/.vim; vim ~/.vimrc'
