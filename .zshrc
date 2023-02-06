# oh-mh-zsh root path
export ZSH="$HOME/.config/oh-my-zsh"

ZSH_THEME="awesomepanda"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"

zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git colored-man-pages kubectl tmux virtualenv)

ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOCONNECT=false

source $ZSH/oh-my-zsh.sh

EDITOR=v
PATH=$PATH:$HOME/.local/bin

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

