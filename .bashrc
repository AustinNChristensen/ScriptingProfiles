

alias ..='cd ..'
alias nanobash='nano ~/.bashrc'
alias nanoo='open -a Sublime Text'
alias chrome='open -a "Google Chrome"'
alias nanovs='open -a "Visual Studio Code"'
alias dc=docker-compose
alias dcu='docker-compose up'
alias dcub='docker-compose up --build'
alias dcd='docker-compose down'
alias dcdr='docker-compose down --remove-orphans'
alias dkill='docker system prune'
alias kb='kubectl'
alias kbgp='kubectl get pods'
alias kbgs='kubectl get services'
alias kbgd='kubectl get deployments'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
