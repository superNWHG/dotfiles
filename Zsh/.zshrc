# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH

source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# history settings
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000

# Configure fzf-tab options
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':completion*:descriptions' format '[%d]'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit
compinit -D

# Load plugins
source ~/.config/zsh/plugins/k/k.sh
source ~/.config/zsh/plugins/alias-tips/alias-tips.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-sudo/zsh-sudo.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

ZVM_CURSOR_STYLE_ENABLED=false

export EDITOR='nvim'

precmd() {
  print -Pn "\e]0; %~\a"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

bindkey "^[[3~" delete-char
