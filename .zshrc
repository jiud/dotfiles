# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dennis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Used for enabling use of fuctions in PS1
setopt PROMPT_SUBST


#Failock for usig trash-put
alias rm='echo -e "\033[1;33mPermanent removal avoided\033[00m: Use trash-put instead please, or prepend \"rm\" with \"\\\""; false' #using trash-put is safer in the long run

#Gits
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' #easily manage dotfiles

#i3 specific
#alias logoff='killall i3' #alias for logging out
#alias lock='~/.config/genmon/Lock.sh' #alias for locking pc
#alias light='sudo ~/programming/scripts/bright_change.sh' #alias for brightness change

#Replacements
alias ls='lsd' #alias for lsd
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias vim='nvim' #replacing vim with nvim

alias f='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!
alias dup='kitty & disown $!' #start another window in the current dir and disown it
alias cleanup='pacman -Qdtq > pkgsForCleanup' # list potentially unneeded packages in a file, actually remove them with 'cat pkgs | pacman -Rns -' 
alias update='echo -e "\033[1;33m" && curl -s https://www.archlinux.org/feeds/news/ | xmllint --xpath //item/title\ \|\ //item/pubDate /dev/stdin | sed "s/\(<title\|<\/title>\|<pubDate>\|<\/pubDate>\)//g" | head -n 6 | sed "s/+0000//g" && echo -e "\033[0m" && echo -e "\n\033[1;33m***\033[0m Performing \033[1;33mFULL SYSTEM UPGRADE\033[0m, check for \033[0;31mMANUAL INTERVENTION\033[0m on the news ↑ \033[1;33m***\033[0m\n" && yay -Syu'
#^^^ Command to update but print arch news for needing manual interferance etc on top^^^

#Teleports
alias work='cd ~/dev/work'
alias micro='cd ~/dev/work/microsites'
alias cms='cd ~/dev/work/cms-promo'
alias uni='cd ~/uniBackup'
alias vimdots='cd ~/.config/nvim/'
alias dots='cd ~/.config/' #quickly tweak things
alias notes="nvim ~/uniBackup/TASKS/uniToDo.org"
alias books="nvim ~/media/documents/reading-list.org"
alias termdots="nvim ~/.config/kitty/kitty.conf"

#Needed for intended kitty terminal behevior on servers
#alias ssh="kitty +kitten ssh"

#making a function to display git branch on PS1 
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/( \1)/'
}

export PS1=$'%F{yellow}╭─%F{blue}   %F{green} $(git_branch) %F{blue}%~\n%F{yellow}╰──🮲🮳[%(?.√.?%F{red}%?)%F{yellow}]\$ %F{white}'

#Setting the system's default editor
#export ALTERNATE_EDITOR="emacs"
#export EDITOR="emacsclient --no-wait" 
export EDITOR="nvim"

#This the environment variables for pfetch 
export PF_INFO="os kernel memory uptime pkgs"
