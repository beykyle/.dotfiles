export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kyle/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dropbox)

source $ZSH/oh-my-zsh.sh

# User configuration

#geant4
export current=$(pwd)
cd /home/kyle/geant4/geant4.10.06-install/bin/
source geant4.sh
cd $current


# export MANPATH="/usr/local/man:$MANPATH"
source ~/.env
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
#export ARCHFLAGS="-arch x86_64"
export CC="/usr/bin/gcc-9"
export CXX="/usr/bin/g++-9"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/include/c++/8"

#pure
fpath+=("$HOME/.zsh/pure")
autoload -Uz promptinit 
promptinit
prompt pure

#tmux
#tmux source ~/.tmux.conf

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias py="python3"
alias ga="git add"
alias gs="git status"
alias gsc="git stash && git stash clear"
alias gc="git commit"
alias gp="git push"
alias gu="git remote update --prune"
alias mk="make -j2"
alias pip="pip3"
alias open="nautilus --browser"
alias view="screen -d -m zathura"
alias jan="cd ~/JANIS && janis.sh"
alias config='/usr/bin/git --git-dir=/home/kyle/.cfg/ --work-tree=/home/kyle'
alias present="pdfpc" 
alias cisco="~/vpn/anyconnect-linux64-4.7.04056-predeploy-k9/anyconnect-linux64-4.7.04056/vpn/vpn"
alias wttr="curl wttr.in"
alias vnc="~/vnc/VNC-Viewer-6.20.529-Linux-x64"

#user functions
ldir () {
  if [ "$1" != "" ]
  then 
    ls -la "$1" | grep "^d" && ls -la | grep -v "^d"
  else 
    ls -la ./ | grep "^d" && ls -la | grep -v "^d"
  fi
}

# syntax
source /home/kyle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
