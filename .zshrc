# Customize to your needs...
export PATH=/usr/local/bin:/Users/arudge/.rvm/bin:/usr/local/share/npm/bin/:$PATH
source "$HOME/.dotfiles/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle arialdomartini/oh-my-git
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle autojump
antigen bundle brew
#antigen bundle vagrant
#antigen bundle gradle
#antigen bundle grails
antigen bundle osx
#antigen bundle redis-cli
antigen bundle git-extras
antigen bundle gnu-utils

# Load the theme.
#antigen theme arialdomartini/oh-my-git-themes arialdo-pathinline
antigen theme garyblessington #Soliv

# Tell antigen that you're done.
antigen apply

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Set to this to use case-sensitive completion
#CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

source "$HOME/.dotfiles/zsh/aliases"
source "$HOME/.dotfiles/zsh/functions"
source "$HOME/.dotfiles/zsh/env"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
source "/Users/arudge/.gvm/bin/gvm-init.sh"
