#
# .zshrc
#
#


alias vim='nvim'
alias l='ls -la'
alias ls='ls --color'
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS

bindkey -s '^F' 'j\n'

function j() {
 if [[ $# -eq 1 ]]; then
     selected=$1
 else
     selected=$(find ~/.config ~/projects ~/ -mindepth 1 -maxdepth 1 -type d | fzf)
 fi
 [[ -n $selected ]] && cd "$selected"
}

# Initialize completion system
autoload -U compinit
compinit

# Allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# History settings
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Never beep
setopt NO_BEEP

# Disable mail checking
MAILCHECK=0

# Load colors
autoload -U colors
colors

PROMPT='%F{blue}%n@%m%f:%F{green}%~%f %# '


. "$HOME/.cargo/env"

export PATH=$PATH:/home/dan/.spicetify


bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
