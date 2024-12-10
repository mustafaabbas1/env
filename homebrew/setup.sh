#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cat <<EOF >> $HOME/.zprofile

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
EOF
