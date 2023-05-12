#Basics
#alias ls="exa --icons --group-directories-first"
#alias ll="exa -l --icons --no-user --git -s time"
alias vi='nvim'
alias vim='nvim'
alias modvim='vi ~/.config/nvim/init.vim'
alias sshconfig='cat ~/.ssh/config'
alias modssh='vi ~/.ssh/config'
alias modzsh='vi ~/.zshrc'
alias modbash='vi ~/.zshrc'
alias modalias='vi ~/.zsh/aliases.zsh'
alias modfunc='~/.zsh/functions.zsh'
alias modaws='vi ~/.aws/config'
alias hosts='ansible-inventory --graph'
alias grep='grep -i --color'
alias pip='pip3'

# Kubernetes
alias k='kubectl'
alias h='helm'
alias ctx='kubectx'
alias ns='kubens'
alias contexts='kubectl config get-contexts'

# AWS
alias awsconfig='cat ~/.aws/config'
alias awslogin='aws sso login; aws configure list-profiles'
alias awsprofiles='aws configure list-profiles'
