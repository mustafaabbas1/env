#!/bin/bash

brew install pyenv

profile_script='
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
'

echo "$profile_script" >> ~/.zprofile
