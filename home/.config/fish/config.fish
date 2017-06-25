set -x PATH $PATH /usr/local/sbin
set -x PATH $PATH ~/.bin
set -x VIRTUALFISH_DEFAULT_PYTHON python3.6
eval (python -m virtualfish auto_activation)
