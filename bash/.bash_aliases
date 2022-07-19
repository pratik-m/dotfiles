# Pratik Munot
# .bash_aliases files - collection of the aliases file

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# ls aliases
alias ls='ls --color=auto'              # ls with color
alias ll='ls -ltrh'
alias la='ls -ltrha'
alias lx='ls -Xl'                       # sort by extension
alias lz='ll -S'                        # sort by size
alias ld='ls -ld */'                    # ls only directories

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..=cd..
alias up1=..
alias up2='up1;..'
alias up3='up2;..;'
alias up4='up3;..;'
alias fc='find . -maxdepth 1 type -f | wc -l'       # count of files in current directory

# general aliases
alias rm='rm -iv'
alias q='exit'
alias qq='q;q;q'                        # exit out of shell as well as ssh
alias cc='clear'
alias mkdir='mkdir -p'

alias ifind='find . -iname '

alias lcf="_wlc{ cat $1 | wc -l; } _wlc"           # line count for a file

alias head1='head -1'
alias tail1='tail -1'

# edit and source bashrc/bash_aliases
alias ebashrc='vi ~/.bashrc'
alias ebasha='vi ~/.bash_aliases'
alias sbashrc='source ~/.bashrc'
alias sbasha='source ~/.bash_aliases'

# chmod aliases
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# https://dsebastien.net/blog/2020-05-09-bash-aliases-are-awesome
alias typeless='history | tail -n 20000 | sed "s/.* //" | sort | uniq -c | sort -g | tail -n 100' # top 100 commands

# aliases I use the most
alias myaliases="cat .bash_aliases | cut -d' ' -f2 | cut -d'=' -f1"
