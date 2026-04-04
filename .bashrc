# ~/.bashrc - de4thPawn

export EDITOR=vim
export TERM=xterm-256color
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoreboth:erasedups

# prompt
PS1='\[\e[38;5;196m\]\u\[\e[0m\]@\[\e[38;5;208m\]\h\[\e[0m\]:\[\e[38;5;39m\]\w\[\e[0m\]\$ '

# aliases
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# shortcuts
alias ports='netstat -tulanp'
alias myip='curl -s ifconfig.me'
alias serve='python3 -m http.server 8080'
alias clip='xclip -selection clipboard'

# tools
alias nse='ls /usr/share/nmap/scripts/ | grep'
alias msf='msfconsole -q'
alias burp='java -jar ~/tools/burpsuite.jar &'
alias ghidra='~/tools/ghidra/ghidraRun &'

# quick scan
alias qscan='nmap -sC -sV -oA scan'
alias fscan='nmap -p- -T4 --min-rate=1000'
alias uscan='nmap -sU --top-ports 100'

# docker
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dex='docker exec -it'
alias dlog='docker logs -f'

# extract anything
extract() {
    if [ -f "$1" ]; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz)  tar xzf $1 ;;
            *.bz2)     bunzip2 $1 ;;
            *.gz)      gunzip $1 ;;
            *.tar)     tar xf $1 ;;
            *.tbz2)    tar xjf $1 ;;
            *.tgz)     tar xzf $1 ;;
            *.zip)     unzip $1 ;;
            *.7z)      7z x $1 ;;
            *.rar)     unrar x $1 ;;
            *)         echo "'$1' unknown format" ;;
        esac
    else
        echo "'$1' is not a file"
    fi
}

# colored man pages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    command man "$@"
}

echo "d34th awaits."
