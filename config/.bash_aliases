export CLICOLOR=1
export EDITOR=vi
export VISUAL=vi

# Aliases
alias autoupdate="sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean && sudo apt-get purge && sudo apt-get clean"

# Docker
export DOCKER_HOST=tcp://127.0.0.1:2375

# Miniconda3
export PATH="/home/$USER/miniconda3/bin:$PATH"
