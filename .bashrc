# .bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Include spaces-tools path
# PATH=$PATH:/opt/bb/bin/spaces
# export PATH

# https://github.com/r3tex/one-dark
# https://en.wikipedia.org/wiki/ANSI_escape_code#Colors
F_BLUE='38;2;97;175;239'
F_CYAN='38;2;86;182;194'
F_GREEN='38;2;152;195;121'
F_PURPLE='38;2;198;120;221'
F_RED='38;2;224;108;117'
F_DARK_RED='38;2;190;80;70'
F_WHITE='38;2;171;178;191'
F_YELLOW='38;2;229;192;123'
    
function git_branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
    
export PS1='\[\e[${F_BLUE}m[\D{%m-%d %H:%M.%S}] \e[${F_PURPLE}m\u@spaces\e[${F_WHITE}m:\e[${F_GREEN}m\w\e[${F_WHITE}m $(git_branch)\]\n$ \[\e[0m\]'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias gs='git status'
alias gl='git log -n 2'
alias gb='git_branch'
alias gd='git diff'