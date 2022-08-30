export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
export PATH="$PATH:/usr/local/Caskroom/flutter/3.0.5/flutter/bin"

export REDIS_DEV_HOST=redis-sports.innodev.site
export REDIS_STG_HOST=redis-tiger-stg.ceshi22.com

export MYSQL_USER=inno_rd
export MYSQL_DEV_HOST=mysql-tiger-dev.ceshi22.com
export MYSQL_DEV_PW=29SU5Rkt
export MYSQL_STG_HOST=mysql-infra-stg.ceshi22.com
export MYSQL_STG_PW=7Z3B3!db

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

