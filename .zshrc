# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# Alllows install of Go modules
export GO111MODULE=on

# Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"

#PATH to go
export GOPATH="$HOME/go"

# Set color scheme of EXA so it's not so ugly
export EXA_COLORS="ur=32:uw=32:ux=32:gr=32:gw=32:gx=32:tr=32:tw=32:tx=32:da=32"

# Add wisely, as too many plugins slow down shell startup
# USUALLY MY DEFAULT
#plugins=(zsh-z zsh-autosuggestions docker docker-compose aws git brew gradle terraform tmux zsh-syntax-highlighting)

#TURN OFF AUTOCOMPLETE FOR RECORDING
plugins=(zsh-z docker docker-compose aws git brew gradle terraform tmux zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)


# Aliases
alias ll="exa -l --icons --git -s time"
alias lla="exa -l -a --icons --git -s time"
alias vi='nvim'
alias vim='nvim'
alias cls='clear'
alias modvim='vi ~/.config/nvim/init.vim'
alias awsconfig='cat ~/.aws/config'
alias sshconfig='cat ~/.ssh/config'
alias modssh='vi ~/.ssh/config'
alias modzsh='vi ~/.zshrc'
alias modbash='vi ~/.zshrc'
alias modalias='vi ~/.zshrc'
alias modaws='vi ~/.aws/config'
alias hosts='ansible-inventory --graph'
alias grep='grep -i'
alias pip='pip3'
alias k='kubectl'
alias t='tmux'
alias ts='tmux ls'

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export PATH=/usr/local/bin/:$PATH
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws



#Powerline - Go THEME. must install powerline go: go install github.com/justjanne/powerline-go@latest
function powerline_precmd() {
        #PS1="$($GOPATH/bin/powerline-go -error $? -cwd-mode semifancy -git-mode compact -cwd-max-depth 3 -cwd-max-dir-size 5 -theme default -shell zsh -cwd-mode plain -modules aws,docker,docker-context,dotenv,ssh,cwd,exit,venv,gitlite,terraform-workspace,vi-mode)"
        PS1="$($GOPATH/bin/powerline-go -error $? -cwd-mode semifancy -git-mode compact -cwd-max-depth 3 -cwd-max-dir-size 5 -theme default -shell zsh -cwd-mode plain -modules aws,docker,docker-context,dotenv,ssh,cwd,exit,venv,terraform-workspace,vi-mode)"
        #(valid choices: aws, bzr, cwd, direnv, docker, docker-context, dotenv, duration, exit, fossil, gcp, git, gitlite, goenv, hg, host, jobs, kube, load, newline, nix-shell, node, perlbrew, perms, plenv, rbenv, root, rvm, shell-var, shenv, ssh, svn, termtitle, terraform-workspace, time, user, venv, vgo, vi-mode, wsl)
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    install_powerline_precmd
fi

# Z setup
## replace /home with ~/
ZSHZ_TILDE=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Automatically start TMUX, if it's not set
if [[ ! -v ZSH_TMUX_AUTOSTART ]]; then
    export ZSH_TMUX_AUTOSTART=true
fi


complete -o nospace -C /home/linuxbrew/.linuxbrew/Cellar/terraform/1.3.6/bin/terraform terraform
