# Calvin's aliases

# Random ones, Mistype frequently
alias tmus='tmux'
alias ks="ls"
alias CD='cd'
alias LS='ls'
alias objDump='objdump'
alias quit='exit'

alias xclip='xclip -selection clipboard'										# Default xclip to system clipboard
alias x='xclip -selection clipboard'

# alias ls='ls --color=auto -a'
# alias LS='ls --color=auto -a'

alias fix='reset; stty sane; tput rs1; clear; echo -e "\033c"'                  # sometimes tmux breaks terminal stuff, can trigger with fast `git log, q` plus maximizing / un-maximizing pane

# alias ls-absolute="ls -d `pwd`/*" PWD is only executed ONCE when bashrc is sourced.
# alias lsabsolute="ls -d `pwd`/*"	PWD is only executed ONCE when bashrc is sourced.
alias ls-absolute="readlink -f *"
alias lsabsolute="readlink -f *"
alias folder-size="du -hd1"
alias folder-size-sorted="du -hd1 | sort -h"

# alias find="find -iname"  # Don't want to use iname all the time
# alias grep="grep -i"      # Don't want to use case insensitive all the time

alias grepfiles="grep -lm1"
alias diffcolor="colordiff"
alias watch='watch -n1 -d'      # One second interval and highlight differences
alias watch-normal='watch'

# Git
alias gitlogpretty="git log --pretty=format:'%C(auto,yellow)%h %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(10,trunc)%aN %C(auto,reset)%s %C(auto)(%gD%D)' --date=relative"
alias gitlogprettyshort="git log --pretty=format:'%C(auto,yellow)%h %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(10,trunc)%aN %C(auto,reset)%s %C(auto)(%gD%D)' --date=relative"
alias gitlogprettylong="git log --pretty=format:'%C(auto,yellow)%h %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(10,trunc)%aN %C(auto,reset)%s %C(auto)(%gD%D)%C(auto)%b%C(auto)%N' --date=relative"
