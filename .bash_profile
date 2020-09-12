alias mphp='/usr/local/php5-5.5.15-20140809-134316/bin/php'
alias connect='ssh -o ServerAliveInterval=10 jacurtis@devappdal0501.softlayer.local'
alias ggrep='git grep -n' 
alias connect-workstation='ssh jacurtis@172.30.66.135' 
alias fcommand='history | grep '

mkcd() {
	mkdir $1 && cd $1
}

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }
process-on-port() {
	sudo lsof -i tcp:$1
}

g-stash() {
	git stash save $1
}

g-liststash() {
	git stash list
}

g-showstash() {
	git stash show stash@{$1}
}

g-showstashdiff() {
	git stash show -p stash@{$1}
}

g-showpulldiff() {
	git diff master@{1} master
}

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------
alias vagrant_ssh='cd ~/Homestead/ && vagrant ssh'
alias vagrant_up='cd ~/Homestead/ && vagrant up'
alias vagrant_halt='cd ~/Homestead/ && vagrant halt'
alias jamesip='curl ifconfig.me'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

HISTFILESIZE=5000
export PS1="\u@\h\w: "

export PATH="$PATH":~/Bin:~/.composer/vendor/bin:~/chromium/depot_tools
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Added by install_latest_perl_osx.pl
[ -r /Users/James/.bashrc ] && source /Users/James/.bashrc

# added by Anaconda3 4.2.0 installer
export PATH="/Users/jamescurtis/anaconda/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
