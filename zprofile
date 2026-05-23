if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -f ~/.zprofile.local ]; then
  source ~/.zprofile.local
fi
