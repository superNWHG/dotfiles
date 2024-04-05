# Pacman aliases
alias pacin="sudo pacman -S"
alias pacrem="sudo pacman -Rns"
alias pacreps="pacman -Ss"
alias pacmir="sudo pacman -Syy"

# Pacman aliases
alias parin="paru -S"
alias parrem="paru -Rns"
alias parreps="paru -Ss"
alias parmir="paru Syy"
alias upgrade="paru -Syu"
alias clean="paru -Scc && paru -Rns $(paru -Qtdq) && rm -rf ~/.cache/*"

# General aliases
alias ccd="cd && clear"
alias ls="lsd"
alias history="history 0"