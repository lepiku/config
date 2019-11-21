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
alias vimrc='vim ~/.vimrc'

# git pull in all directory
alias gitpullall='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'

# fzf hidden search
alias fzfall='find -maxdepth 6 -not -ipath "*compfest*" -type d 2> /dev/null | fzf'

# vim without YouCompleteMe with vi
alias vi="vim --cmd \"let g:pathogen_disabled = ['YouCompleteMe']\""

# search inside files
alias search="grep -Rn -e"
alias isearch="grep -Rni -e"

# django development
alias praktekiin="cd ~/Dropbox/Django/praktekiin/; conda deactivate; conda activate django"
alias alkhawarizmi="cd ~/Projects/it-force/alkhwarizmi/; conda deactivate; conda activate it-force"
alias tplatform="cd ~/Projects/TPF/form/; conda deactivate; conda activate tpf"
alias ppw="cd ~/Projects/PPW/ppw-lab/; conda deactivate; conda activate ppw"
alias matchadrink="cd ~/Projects/PPW/matcha-drink/; conda deactivate; conda activate ppw"

# django misc
alias dbreset='rm db.sqlite3; rm antri/migrations/0*; ./manage.py makemigrations && ./manage.py migrate && ./manage.py shell < testdata.py'

# compfest
alias blackmanta="cd ~/Projects/compfest/black-manta"

alias iftop="iftop -B -m 15M"
alias git-commit-no-message="git commit --allow-empty-message -m ''"
