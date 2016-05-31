export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/php5/bin:$PATH
export PATH=/usr/local/bin:$PATH
alias localhost="cd /Library/WebServer/Documents/"
alias nextgen2016="cd /Library/WebServer/Documents/drupal-vm-pantheon"
alias nextgen2016up="cd /Library/WebServer/Documents/drupal-vm-pantheon; vagrant up"
alias nextgen2016stop="cd /Library/WebServer/Documents/drupal-vm-pantheon; vagrant halt"
alias unmounthd="diskutil unmount /Volumes/Seagate\ Backup\ Plus\ Drive/"
alias ls="ls -fF"
alias lsdir="ls -R"
alias lsrec="ls -ShRail"
alias rm="rm -i"
alias mv="mv -v"
alias cat="cat -nbs"

$(boot2docker shellinit 2> /dev/null)
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
