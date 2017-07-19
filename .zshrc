# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Theme
# Look in ~/.oh-my-zsh/themes/ or "random"
ZSH_THEME="pure"

# Same cool colors for ls command and autocomplete
eval `dircolors ~/.dircolors.ansi-dark`
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
# Custom plugins may be added to $ZSH/custom/plugins/
plugins=(git zsh-syntax-highlighting)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Aliases
# For a full list of active aliases, run `alias`.
alias fixit="sudo rm /var/lib/pacman/db.lck"
alias mp="mousepad"
alias py="python"
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias okey-google="ping google.com"
alias find="find 2>/dev/null"

alias mips-gcc='mips-linux-gnu-gcc-4.6'
alias mips-objdump='mips-linux-gnu-objdump'
alias gcc-allflags='gcc -Wall -Wextra -Werror -pedantic -std=c99 -g'


export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
