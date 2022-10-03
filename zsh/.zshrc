# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

plugins=(
    archlinux
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    copypath
    thefuck
    fzf
)

source $ZSH/oh-my-zsh.sh

# ------------ Aliases ----------


# ls alises
alias ls="colorls --sd"
alias ll="colorls -Al --sd"
alias l="colorls -A --sd"
alias llg="colorls -Al | grep"
alias lh="echo 'ls >> colorls --sd\nll >> colorls=Al --sd\nl >> colorls -A --sd'"

# Custom
alias zshrc="vim ~/.zshrc"
alias testnet="ping google.com -c 3"
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias watch='watch -n .2'
alias clear_history="rm ~/.zsh_history"
alias chillpop='mpv "https://www.youtube.com/watch?v=7NOSDKb0HlU"'
alias activate='source ./venv/bin/activate'
alias mkvenv='rm -rf ./venv && python -m venv --upgrade-deps venv && source ./venv/bin/activate'
alias initvenv='pip install pylint autopep8'
alias rmvenv='deactivate && rm -rf ./venv'
alias src='exec zsh'
alias dirty='watch "cat /proc/meminfo | grep Dirty"'
alias slp='mpv https://www.youtube.com/playlist\?list\=PLC-sAnk8UWo6rEVHrgLzc4WxJ0QWOxs2M --no-video --shuffle'
alias cp='rsync -ah --progress'
alias sshutdown='shutdown -h 120'
alias cshutdown='shutdown -c'
alias lock='cinnamon-screensaver-command --lock'
alias hibernate='systemctl hibernate'
alias down='lock && hibernate'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

