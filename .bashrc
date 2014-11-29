if [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob


alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias tmesg='dmesg|perl -ne "BEGIN{\$a= time()- qx!cat /proc/uptime!};s/\[\s*(\d+)\.\d+\]/localtime(\$1 + \$a)/e; print \$_;"'
