# Fish Aliases

# Pacman/Arch specific
alias upgrade "sudo pacman -Syu"
alias pinfo "pacman -Qi"
alias sinfo "pacman -Si"
alias psearch "pacman -Ss"
alias remorph "/usr/bin/pacman -Qtdq > /dev/null and sudo /usr/bin/pacman -Rns (/usr/bin/pacman -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"
alias arch "archey3"

# General Aliases
alias h "pushd ~"
alias b "cd -"
alias ... "cd ../.."
alias .... "cd ../../.."
alias p3 "python"
alias p2 "python2"
alias pdown "sudo shutdown -HP now"
