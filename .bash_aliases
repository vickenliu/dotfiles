#Custom aliases

# General
alias ll='ls -al'
alias reloadbash='source ~/.bash_profile'

#GIT
alias pull='git pull $1 $2'
alias fetch='git fetch'
alias push='git push origin $1'
alias commit='git commit -m $1'
alias add='git add $1'
alias re-commit='git commit --amend -m $1'
alias redo-last='git reset HEAD~'
alias checkout='git checkout $1'
alias status='git status'
alias new='git checkout -b $1'
alias emptycommit='git commit --allow-empty -m "empty commit --ci"' 

#mongodb
alias runmongolocal='clear && mongod --dbpath $MONGO_HOME/data/local'
alias startMongo='clear && sudo mongod --dbpath ~/data/db'

#docker
alias rmdockerimages='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
alias rmdockercontainers='docker rm $(docker ps -a -q)'

function killport () {
  sudo kill -QUIT $(sudo lsof -sTCP:LISTEN -i tcp:$1 -t)
}
