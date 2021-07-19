export ZSH_CUSTOM='/Users/hagbarth/.zsh_custom'

export PENTO_DIR='/Users/hagbarth/pento/Pento'

# Setup Google Cloud
source '/Users/hagbarth/google-cloud-sdk/path.zsh.inc'
source '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc'

alias pentodev="cd /Users/hagbarth/Developer/Go/src/gitlab.com/pentoapp/"
export GCLOUD_CONFIG=$HOME/.config/gcloud
export CLOUDSDK_PYTHON=python3

# Setup Kubernetes
export KUBE_EDITOR=vim
source <(kubectl completion zsh)
alias k=kubectl
alias kprod="k config use-context gke_pentoapp_europe-west1-c_eu-prod"
alias kfun="k config use-context gke_pentoapp_europe-west1-c_eu-fun"

# Brew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/hagbarth/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Go
export GOPATH='/Users/hagbarth/Developer/Go'
export GOROOT='/opt/homebrew/opt/go'
export PATH=$PATH:$GOROOT/bin
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
fpath+=$HOME/.zsh/pure
ZSH_THEME=""
PURE_PROMPT_SYMBOL="🦄 - ❯"
autoload -U promptinit; promptinit
prompt pure

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hagbarth/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/hagbarth/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/hagbarth/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
