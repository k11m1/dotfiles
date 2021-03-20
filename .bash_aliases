# Dotfiles 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dts='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME status'
alias dtd='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME diff'
alias dtc='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit --verbose'
alias dta='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME add'
alias dtp='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME push'

# Termite hack
alias ssh='TERM=xterm-256color ssh '

#Colorful command
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls
alias la='ls -al'

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "


# termbin
alias tb="nc termbin.com 9999"

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
alias em="/usr/bin/emacs -nw"
alias emacs="emacsclient -c -a -t 'emacs'"
alias doomsync="~/.emacs.d/bin/doom sync"
alias doomdoctor="~/.emacs.d/bin/doom doctor"
alias doomupgrade="~/.emacs.d/bin/doom upgrade"
alias doompurge="~/.emacs.d/bin/doom purge"

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua="yay -Sua "              		 # update only AUR pkgs
alias yaysyu="yay -Syu "                         # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

alias lock="i3lock -c 000000"
alias screencastvga='ffmpeg -f x11grab -r xllgrab -r 15 -s 1280x1024 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video2'
alias screencasteDP='ffmpeg -f x11grab -r xllgrab -r 15 -s 1920x1080 -i :0.0+1280,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video2'

#neovim
alias n='nvim'

