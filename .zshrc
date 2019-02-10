export ZSH_CUSTOM='/Users/hagbarth/.zsh_custom'

# Setup Google Cloud
source '/Users/hagbarth/google-cloud-sdk/path.zsh.inc'
source '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc'

alias pentodev="cd /Users/hagbarth/Developer/Go/src/gitlab.com/pentoapp/"

# Setup Kubernetes
export KUBE_EDITOR=vim
source <(kubectl completion zsh)
alias k=kubectl
alias kprod="k config use-context gke_pentoapp_europe-west1-c_eu-prod"
alias kfun="k config use-context gke_pentoapp_europe-west1-c_eu-fun"

# Go
export GOPATH='/Users/hagbarth/Developer/Go'
export PATH=$PATH:$(go env GOPATH)/bin

bindkey -v
bindkey '^R' history-incremental-search-backward

# Node
npm config delete prefix

# Setup oh-my-zsh
export ZSH=/Users/hagbarth/.oh-my-zsh
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# Theme
ZSH_THEME=""
PURE_PROMPT_SYMBOL="🦄 - ❯"
autoload -U promptinit; promptinit
prompt pure

# Install scripts
cp ~/.dotfiles/scripts/* /usr/local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hagbarth/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/hagbarth/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc'; fi
