# Application Shortcuts
alias coda='open -g -a Coda' # ターミナルからCodaを開く

# MAMP
alias web='cd /Applications/MAMP/htdocs/' # MAMPのドキュメントルートにジャンプする
alias mysql='/Applications/MAMP/Library/bin/mysql'
alias php5.3='/Applications/MAMP/bin/php5.3/bin/php'

# for shortcut
alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias ls='ls -GwF'
alias la='ls -alh'
alias t='tar zxvf'
alias t-='tar xvf -'
alias b='bzip2 -dc'
alias dh='df -h'
alias vi='vim'
alias v='vim'
alias sr='screen -d -R'
alias grep='grep --exclude=*.svn*'
alias greprn='grep -rn --exclude=*.svn*'
alias bye='sudo shutdown -h now'

# for svn
alias st='svn st'
alias stu='svn st -u'
alias sd='svn di'
alias sdi='svn di'
alias sad='svn add'
alias sup='svn up'
alias sci='svn ci'
alias scim='svn ci -m'

# for git
alias gst='git status'
alias gci='git commit'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gad='git add'export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
