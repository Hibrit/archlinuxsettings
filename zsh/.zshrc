# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/hibrit/.oh-my-zsh"

# Path variable
export PATH=~/.gem/ruby/2.7.0/bin:$PATH

plugins=(
    archlinux
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    copydir
    zsh_reload
    thefuck
    fzf
)

source $ZSH/oh-my-zsh.sh

# ------------ Aliases ----------

# Git Commands
alias gi="git init"
alias ga="git add"
alias gc="git commit"
alias gp="git push origin master"
alias gpl="git pull origin master"
alias gs="git status"
alias grr="git remote remove origin"
alias gra="git remote add origin"
alias gh="echo 'gi >> git init\nga >> git add\ngc >> git commit\ngp >> git push origin master\ngpl >> git pull origin master\ngs >> git status\ngrr >> git remote remove origin\ngra >> git remote add origin'"

# ls alises
alias ls="colorls --sd"
alias ll="colorls -Al --sd"
alias l="colorls -A --sd"
alias lh="echo 'ls >> colorls --sd\nll >> colorls=Al --sd\nl >> colorls -A --sd'"

# ProtonVPN
alias vpn="sudo protonvpn"
alias vpni="sudo protonvpn init"
alias vpnc="sudo protonvpn c"
alias vpncf="sudo protonvpn c -f"
alias vpnp="sudo protonvpn c --cc de"
alias vpnd="sudo protonvpn d"
alias vpns="sudo protonvpn s"
alias vpnh="echo 'vpn >> sudo protonvpn\nvpni >> sudo protonvpn init\nvpnc >> sudo protonvpn c\nvpncf >> sudo protonvpn c -f\nvpnp >> sudo protonvpn c --cc de\nvpnd >> sudo protonvpn d\nvpns >> sudo protonvpn s'"

# Custom
alias zshrc="vim ~/.zshrc"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
