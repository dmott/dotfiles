
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set git autocompletion and PS1 integration
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

PS1='\[\033[39m\]\u@\h\[\033[00m\]:\[\033[39m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

alias ll='ls -la'
alias bi='bundle install'
alias be='bundle exec'
alias ber='bundle exec rake'
alias databaser='bundle exec rake db:create db:migrate db:test:prepare'
alias migrater='bundle exec rake db:migrate db:test:prepare'
alias rollbacker='bundle exec rake db:rollback db:test:prepare'
alias gpoh='git push origin head -u'
alias rc='rails c'
alias rs='rails s'
alias searchy='grep -r $0 .'
alias chownweb='sudo chown -R ${whoami}:_www src/wordpress/wp-content/plugins; sudo chown -R ${whoami}:_www src/wordpress/wp-content/upgrade; sudo chown -R ${whoami}:_www src/wordpress/wp-content/uploads;'
alias apachelog='tail -50f /var/log/apache2/error_log'
alias startsolr='cd /usr/local/Cellar/solr/4.0.0/libexec/example && /usr/bin/java -Dsolr.solr.home=/usr/local/opt/solr/libexec/example/solr/ -jar start.jar'