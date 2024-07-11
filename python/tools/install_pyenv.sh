#!/bin/bash
sudo apt-get update

# install Pyenv dependencies
sudo apt-get install -y git curl make \
    build-essential gcc llvm zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libssl-dev liblzma-dev libffi-dev xz-utils \
    python3-dev tk-dev

# Install Pyenv
curl https://pyenv.run | bash

# Add Pyenv initialization to your shell's startup script
export_line="export PATH=\"\$HOME/.pyenv/bin:\$PATH\""
rc_file="$HOME/.bashrc"

if ! grep -q "$export_line" "$rc_file"; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> "$rc_file"
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> "$rc_file"
    echo 'eval "$(pyenv init -)"' >> "$rc_file"
    echo "Pyenv initialization added to $rc_file"
else
    echo "Pyenv initialization already present in $rc_file"
fi

echo "Pyenv has been installed successfully!"