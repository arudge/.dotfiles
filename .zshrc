# Customize to your needs...
export ANTIGEN_DEFAULT_REPO_URL="git@github.com:robbyrussell/oh-my-zsh.git"
export PATH=/usr/local/bin:$PATH
source "$HOME/.dotfiles/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle arialdomartini/oh-my-git
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle autojump
antigen bundle brew
antigen bundle vagrant
antigen bundle gradle
antigen bundle grails
antigen bundle osx
antigen bundle git-extras
antigen bundle gnu-utils
antigen bundle lol

# Load the theme.
#antigen theme arialdomartini/oh-my-git-themes arialdo-pathinline
#antigen theme garyblessington #Soliv
PROMPT='%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%} ✨✨ : '

#manually load garyblessington theme because Sparkles
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

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

#flip to jdk7 instead of installed default
jdk7

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
source "/Users/z0019dg/.gvm/bin/gvm-init.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
