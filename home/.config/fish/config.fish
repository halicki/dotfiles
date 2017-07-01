set -x PATH $PATH /usr/local/sbin
set -x PATH $PATH ~/.bin

# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:
status --is-interactive; and source (pyenv init -|psub)

# Load pyenv-virtualenv automatically by adding
# the following to ~/.config/fish/config.fish:
status --is-interactive; and source (pyenv virtualenv-init -|psub)
