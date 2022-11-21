export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export JAVA_HOME=/Users/$USER/Library/Java/JavaVirtualMachines/corretto-1.8.0_342/Contents/Home

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

