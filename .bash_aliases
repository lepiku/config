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
alias rifle='python3 /home/dimas/Programs/ranger/ranger/ext/rifle.py'

# youtube-dl
alias dlyoutube="youtube-dl -f 'bestvideo[height<=1080]+bestaudio[ext=m4a]/best' --merge-output-format mp4"

# open vimrc on .vim
alias vimrc='cd ~/.vim; vim ~/.vimrc'

# git pull in all directory
alias gitpullall='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'

# fzf hidden search
alias fzfall='find -maxdepth 6 -not -ipath "*compfest*" -type d 2> /dev/null | fzf'

# deactivate source
alias deactivate='conda deactivate'
