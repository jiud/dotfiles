# Path to your oh-my-zsh installation.
export ZSH="/home/dennis/.oh-my-zsh"
# Set name of the theme to load
ZSH_THEME="robbyrussell"

# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

#
# ALIASES
#
alias f='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!
alias ls='lsd' #alias for lsd
alias dup='konsole & disown $!' #start another window in the current dir and disown it
alias vim='nvim' #replacing vim with nvim
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias update='echo -e "\033[1;33m" && curl -s https://www.archlinux.org/feeds/news/ '\
             '| xmllint --xpath //item/title\ \|\ //item/pubDate /dev/stdin '\
             '| sed "s/\(<title\|<\/title>\|<pubDate>\|<\/pubDate>\)//g" '\
             '| head -n 6 '\
             '| sed "s/+0000//g" '\
             '&& echo -e "\033[0m" '\
             '&& echo -e "\n\033[1;33m***\033[0m Performing \033[1;33mFULL SYSTEM UPGRADE\033[0m, '\
             'check for \033[0;31mMANUAL INTERVENTION\033[0m on the news ↑ \033[1;33m***\033[0m\n" '\
             '&& yay -Syu'
#^^^ Command to update but print arch news for needing manual interferance etc on top^^^
alias cleanup='pacman -Qdtq > pkgsForCleanup' # list potentially unneeded packages in a file, actually remove them with 'cat pkgs | pacman -Rns -' 

#Teleports
alias cms='cd ~/dev/work/cms-promo'
alias uni='cd ~/uniBackup'
alias work='cd ~/dev/work'
alias dots='cd ~/.config/' #quickly tweak things
alias micro='cd ~/dev/work/microsites'
alias notes="nvim ~/uniBackup/TASKS/uniToDo.org"
alias books="nvim ~/media/documents/reading-list.org"
alias vimdots='cd ~/.config/nvim/'
alias termdots="nvim ~/.config/alacritty/alacritty.yml"

#Needed for intended alacritty terminal behevior on servers
alias ssh="TERM=xterm-256color ssh"

#Making a function to display git branch on PS1 
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/( \1)/'
}

export PS1=$'%F{yellow}╱╱%F{blue}   %F{green}$(git_branch)%F{blue}%~\n%F{yellow}╲╲ 🮲🮳[%(?.%F{blue}√.%F{red}returned-%?)%F{yellow}]\$ %F{white}'

#Setting the system's default editor
#export ALTERNATE_EDITOR="emacs"
#export EDITOR="emacsclient --no-wait" 
export EDITOR="nvim"

#This the environment variables for pfetch 
export PF_INFO="os kernel memory uptime pkgs"

export PF_SEP=""
export PF_COL2=3

#antialias fonts in java apps
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#exporting apache poi and apache commons for java
#export CLASSPATH=/usr/share/poi-4.1.2/poi-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-schemas-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-4.1.2.jar:/usr/share/poi-4.1.2/ooxml-lib/curvesapi-1.06.jar:/usr/share/poi-4.1.2/ooxml-lib/xmlbeans-3.1.0.jar:/usr/local/Apache/commons-collections4-4.4/commons-collections4-4.4.jar:/usr/local/Apache/commons-io-2.7/commons-io-2.7.jar:/usr/local/Apache/commons-compress-1.20/commons-compress-1.20.jar

#exporting apache home dir
export APACHE_HOME=/usr/local/Apache

#pythonpath to ~/.local/bin
export PYTHONPATH=${PYTHONPATH}:~/.local/bin/

#Exporting lang
export LANG='en_US.UTF-8'

~/dev/programming/scripts/bashinfo/bashinfo.sh
todo

#My own script for teleporting
source ~/dev/programming/shell/zap/src/zap.sh
