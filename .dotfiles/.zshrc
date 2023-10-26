# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export JAVA_HOME=/Users/samuel.tseng/Library/Java/JavaVirtualMachines/corretto-17.0.5/Contents/Home
export AIRFLOW_HOME=~/airflow
export SQLCMDPASSWORD=xcYZPszV74Xu
export PATH=$PATH:$HOME/.local/bin
export openapikey=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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nodeenv status ram time)

ZSH_DISABLE_COMPFIX="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.func

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi


source /Users/samuel.tseng/.docker/init-zsh.sh || true # Added by Docker Desktop

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
export _PROJECT_ROOT=/Users/samuel.tseng/Documents/jko/terraform-vault-app
source ~/env/cobra/vault-app-utils
export VAULT_TOKEN=hvs.CAESIP5adttmmuFAywpTKOIdbKt1cww_jn6vDpiOZ1GZ5bAJGh4KHGh2cy5TRWtPU2Y2MWtadm9wRWU5Uk12VmFadkI
export VAULT_ADDR=https://vault-app.jkopay.app
export PATH=$PATH:~/go/bin
