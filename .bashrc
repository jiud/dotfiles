#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

alias ls='lsd' #alias for lsd
alias rm='echo -e "\033[1;33mPermanent removal avoided\033[00m: Use trash-put instead please, or prepend \"rm\" with \"\\\""; false' #using trash-put is safer in the long run
alias lock='~/.config/genmon/Lock.sh' #alias for locking pc
alias light='sudo ~/scripts/bright_change.sh' #alias for brightness change
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' #easily manage dotfiles
alias logoff='killall i3' #alias for logging out
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias dots='cd ~/.config/' #quickly tweak things
alias vim='nvim' #replacing vim with nvim
alias f='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!
alias dup='xfce4-terminal & disown $!' #start another window in the current dir and disown it
alias cleanup='pacman -Qdtq > pkgsForCleanup' # list potentially unneeded packages in a file, actually remove them with 'cat pkgs | pacman -Rns -' 
alias update='echo -e "\033[1;33m" && curl -s https://www.archlinux.org/feeds/news/ | xmllint --xpath //item/title\ \|\ //item/pubDate /dev/stdin | sed "s/\(<title\|<\/title>\|<pubDate>\|<\/pubDate>\)//g" | head -n 6 | sed "s/+0000//g" && echo -e "\033[0m" && echo -e "\n\033[1;33m***\033[0m Performing \033[1;33mFULL SYSTEM UPGRADE\033[0m, check for \033[0;31mMANUAL INTERVENTION\033[0m on the news ↑ \033[1;33m***\033[0m\n" && yay -Syu'
#^^^ Command to update but print arch news for needing manual interferance etc on top^^^

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\$ 'i

#making a function to display git branch on PS1 
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/( \1)/'
}

export PS1="\[\033[33m\]╭─\[\033[34m\]   \[\033[00m\]\u \[\033[32m\]\$(git_branch)\[\033[00m\] \e[34;1m\w\e[0m\n\[\033[33m\]╰──  \$ \[\033[00m\]"

export EDITOR=nvim

export PF_INFO="os kernel uptime pkgs memory"

#antialias fonts in java apps
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#exporting apache poi and apache commons for java
#export CLASSPATH=/usr/share/poi-4.1.2/poi-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-schemas-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-4.1.2.jar:/usr/share/poi-4.1.2/ooxml-lib/curvesapi-1.06.jar:/usr/share/poi-4.1.2/ooxml-lib/xmlbeans-3.1.0.jar:/usr/local/Apache/commons-collections4-4.4/commons-collections4-4.4.jar:/usr/local/Apache/commons-io-2.7/commons-io-2.7.jar:/usr/local/Apache/commons-compress-1.20/commons-compress-1.20.jar

#exporting apache home dir
export APACHE_HOME=/usr/local/Apache

#pythonpath to ~/.local/bin
export PYTHONPATH=${PYTHONPATH}:~/.local/bin/

#default app to theme qt5 in qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

#Exporting lang
export LANG='en_US.UTF-8'

#Stopping Control-Q and Control-S from annoying me 
stty -ixon

~/scripts/bashinfo/bashinfo.sh
todo
