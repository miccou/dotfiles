export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sensa/sensa"             # my own theme <3

zstyle ':omz:update' mode auto      # update automatically without asking

zstyle ':omz:update' frequency 13   # update every 13 days

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh
