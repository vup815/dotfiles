export JAVA_HOME=/Users/samtseng/Library/Java/JavaVirtualMachines/azul-1.8.0_312/Contents/Home
export MAVEN_HOME=/Library/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH

export ZSH="/Users/samtseng/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nodeenv status ram time)
ZSH_DISABLE_COMPFIX="true"

plugins=(git you-should-use zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

alias gowork="cd /Users/samtseng/Documents/bd_workspace"

