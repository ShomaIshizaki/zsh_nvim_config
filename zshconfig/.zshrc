# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias vi="nvim"
alias python="python3"
alias rm="rm -rf" 
alias pip="pip3"
alias init="vi ~/.config/nvim/init.vim"
alias e="exit"
alias sz="source ~/.zshrc"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NVIM=~/.config/nvim
export PLUG=$NVIM/after
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-arm64/
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$HOME/dev/eclipse/eclipse.jdt.ls/
export PATH=$PATH:$HOME/batshell
