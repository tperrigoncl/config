if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
}

export EDITOR=nano
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/tperrigo/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER="tperrigo"

plugins=(
	git
	zsh-autosuggestions
	zsh-autosuggestions
	zsh-completions
	sudo
	dotenv 
)
# command for zsh-completions
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

alias ls='lsd -lhAF'
alias curl='curl --insecure' 
alias mkdir='mkdir -pv' 
alias wget='wget -c' 
alias rm='rm -v' 
alias mv='mv -v' 
alias javas='/usr/libexec/java_home -V'
alias mini='minikube'
alias k='kubectl'
alias minienv='eval $(minikube -p minikube docker-env)'
alias lg=lazygit
alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"

export EDITOR=nano
export GITSTATUS_LOG_LEVEL=DEBUG
#export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export SBT_OPTS="-Xms512M -Xmx4096M -Xss2M -XX:MaxMetaspaceSize=4096M"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source ~/.iterm2_shell_integration.zsh

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set minikube environment
eval $(minikube -p minikube docker-env)

# Load Angular CLI autocompletion.
source <(ng completion script)

alias qa1='cd ~/src/zero-quest && sbt -Dconfig.resource=local2qa1.conf run'
alias qa2='cd ~/src/zero-quest && sbt -Dconfig.resource=local2qa2.conf run'
alias qa3='cd ~/src/zero-quest && sbt -Dconfig.resource=local2qa3.conf run'
