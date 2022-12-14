# dotfiles-public

These are my dotfiles and cheatsheets for basic Terminal setup on MacOS / Linux / Windows.


# Setup


## Linux Debian (and Windows WSL2)
```
# Basic tools, nerdfont, fuzzy finders
sudo apt update
sudo apt install peco -y
sudo apt install exa -y
sudo apt install golang-go -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo apt install python3-pip
git lone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh Hack


# Neo vim install
sudo apt install neovim -y
sudo apt install exuberant-ctags


#Zsh
sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#ZSH plugins
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlightingc
```


# Cheatsheets - Frequently used commands

## Zsh-Z
```
z  # Searches frequently access directory
```
## FZF - Fuzzy Search
```
^r  # Searches command history
^t  # Searches directories
```


## Tmux
```
tmux new -s <session name>  # create
tmux a -s <session name>    # attach
tmux kill-session -a  	    # kill all sessions but current
```

Sessions 
	-> Windows 
		-> Panes

^a commands: (^b is rebound to ^a in my tmux cnfg)
### Sessions
```
:new -s <session name>
s	# choose session
$	# rename session
d 	# detach session
```


### Windows
```
c 	# creates window
w 	# preview window
, 	# rename window
& 	# close window
```


### Panes
```
% 	   # right
" 	   # bottem
arrows 	   # switch between panes
z 	   # toggle zoom
x 	   # close current pane
! 	   # convert pane into window
```

### Re-read config
```
:source-file ~/.tmux.conf
```
