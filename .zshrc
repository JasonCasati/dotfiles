# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add env.sh
if [ -f "$HOME/.bash_profile" ]; then source $HOME/.bash_profile; fi

# Functions
cd_up() {cd $(printf "%0.s../" $(seq 1 $1 )); }

# Aliases
alias gits="git status"
alias ll="ls -hal"
alias lt="ls -halt"
alias w="watch -n"
alias 'cd..'='cd_up';
alias n="npm run --"
alias npr="npm run --"
alias dc="docker compose"
alias fz="exec zsh -l"
alias y="yarn"
alias yw="yarn workspace"
alias yw="yarn workspaces"
alias g="git"
alias gfl="git-flow"
alias k="kubectl"
alias wpods="watch -n1 kubectl get pods --all-namespaces"
alias vl="vault-login"
alias v="vim"
alias rf="rm -rf"
alias dotfiles-update="cd $DOTFILES_DIR && git checkout main && git pull"
alias dt="deno task"
alias uuidgen-lower="uuidgen | tr '[:upper:]' '[:lower:]'"

# PATH
export PATH="$PATH:$HOME/developer/bin"
export PATH="/usr/local/opt/python/libexec/bin:${PATH}:"
export PATH=$PATH:/usr/local/share/dotnet
export PATH=$PATH:$GOBIN
export PATH="$HOME/.rbenv/bin:$PATH"

# ASDF
if [[ -s "$HOME/.asdf/asdf.sh" ]]; then
  . "$HOME/.asdf/asdf.sh"
fi

if [[ -s "$(brew --prefix asdf)/libexec/asdf.sh" ]]; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
fi

# # AWS
# if [[ -s "/usr/local/bin/aws_zsh_completer.sh" ]]; then
#   source /usr/local/bin/aws_zsh_completer.sh
# fi

# # GCloud
# # The next line updates PATH for the Google Cloud SDK.
# if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then source $HOME/google-cloud-sdk/path.zsh.inc; fi
# # The next line enables shell command completion for gcloud.
# if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then source $HOME/google-cloud-sdk/completion.zsh.inc; fi

# Git Flow
if command -v git-flow &> /dev/null; then
  source $DOTFILES_DIR/git-flow-completion.zsh
fi

# Deno
export DENO_INSTALL_ROOT="${HOME}/.deno"
mkdir -p "${DENO_INSTALL_ROOT}"
export PATH="${DENO_INSTALL_ROOT}/bin:$PATH"

# Starship
# TODO: add readme
eval "$(starship init zsh)"
# source ~/path/to/fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# # Load completion config
# source $HOME/.zsh/completion.zsh

# # Initialize the completion system
# autoload -Uz compinit

# # Cache completion if nothing changed - faster startup time
# typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
# if [ $(date +'%j') != $updated_at ]; then
#   compinit -i
# else
#   compinit -C -i
# fi

# # Enhanced form of menu completion called `menu selection'
# zmodload -i zsh/complist

# export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

# TODO: fix pathing
# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/Documents/google-cloud-sdk/completion.zsh.inc'; fi

# ssh-add --apple-use-keychain .ssh/id_rsa

# Clear the terminal
clear