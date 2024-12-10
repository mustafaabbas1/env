#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

profile_script='
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
'

echo "$profile_script" >> ~/.zprofile
