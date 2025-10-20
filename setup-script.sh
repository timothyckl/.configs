#!/bin/bash

# ------------------------------------------------------
# Check and install Homebrew 
# ------------------------------------------------------
echo ""
echo "🔍 Checking for Hombrew installation..."

if command -v brew >/dev/null 2>&1; then
  echo "✅  Homebrew is already installed at: $(which brew)"
else
  echo "⚠️  Homebrew not in PATH, checking common locations..."

  # Try common Homebrew paths for macOS
  if [[ "$OSTYPE" == "darwin"* ]]; then
    for brew_path in "/opt/homebrew/bin/brew" "/usr/local/bin/brew"; do
      if [[ -x "$brew_path" ]]; then
        echo "🔧 Found Homebrew at $brew_path, setting up environment..."
        eval "$($brew_path shellenv)"
        break 
      fi
    done

    # Check again after PATH update
    if ! command -v brew &> /dev/null; then
        echo "❌ Homebrew not found"
        echo "📦 Please install Homebrew first by running:"
        echo "    /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
        echo "After installation, make sure to run the commands it suggests to add brew to your PATH."
        echo "Then run this script again."
        exit 1
    fi
  fi
fi

# ------------------------------------------------------
# Check and install tools via brew 
# ------------------------------------------------------
tools=(
  "Alacritty|alacritty|alacritty|"
  "Neovim|nvim|neovim|"
  "Claude Code|claude|claude-code|curl -fsSL https://claude.ai/install.sh | bash"
)

for entry in "${tools[@]}"; do
  IFS='|' read -r name cmd cask native <<< "$entry"

  echo ""
  echo "🔍 Checking for $name installation..."

  if command -v "$cmd" >/dev/null 2>&1; then
    echo "✅  $name is already installed at: $(which $cmd)"
  elif [[ "$name" == "Alacritty" ]] && [[ -d "/Applications/Alacritty.app" ]]; then
    echo "⚠️  $name.app already exists in /Applications. Skipping..."
  else
    echo "📦  Installing $name via Homebrew..."
    if brew install --cask "$cask"; then
      echo "🎉  $name successfully installed!"
    elif [[ -n "$native" ]]; then
      echo "📥  Attempting native installation for $name..."
      if eval "$native"; then
        echo "🎉  $name successfully installed via native installer!"
      else
        echo "❌  Failed to install $name. Please check your setup."
        exit 1
      fi
    else
      echo "❌  Failed to install $name. Please check your brew setup."
      exit 1
    fi
  fi
done


# todos:
# move ./.claude to ~/.claude
# install fonts
# install oh-my-zsh
# install anaconda
#
# symlink to ~/.config
