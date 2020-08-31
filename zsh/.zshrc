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
alias ga="git add"
alias gc="git commit"
alias gp="git push origin master"
alias gs="git status"
alias grr="git remote remove origin"
alias gra="git remote add origin"

# ls alises
alias ls="colorls --sd"
alias ll="colorls -Al --sd"
alias l="colorls -A --sd"

# Custom
alias zshrc="vim ~/.zshrc"
alias chillpop="mpv 'https://www.youtube.com/watch?v=5yx6BWlEVcY'"
alias sb="brightnessctl -d intel_backlight s"

# VS Code custom shortcuts
alias codei3="code ~/.config/i3/"
alias codegh="code ~/files/repos"


source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
