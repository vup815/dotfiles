export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export JAVA_HOME=/Users/samuel.tseng/Library/Java/JavaVirtualMachines/corretto-17.0.5/Contents/Home
export AIRFLOW_HOME=~/airflow
export SQLCMDPASSWORD=dhTMRyfX2xY755jL

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
