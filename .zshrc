# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export JAVA_HOME=/Users/samuel.tseng/Library/Java/JavaVirtualMachines/corretto-17.0.5/Contents/Home
export AIRFLOW_HOME=~/airflow
export SQLCMDPASSWORD=xcYZPszV74Xu
export PATH=$PATH:$HOME/.local/bin
export openapikey=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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nodeenv status time)

ZSH_DISABLE_COMPFIX="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
