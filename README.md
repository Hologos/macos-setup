# hologos' macOS-setup

*Based on idea of [carlos' Mac](https://github.com/caarlos0/macOS).*

This is how I setup my new Mac.

## Dependencies

First, make sure you have all those things installed (at least the system ones):

- `git`: to clone the repo

## Installation

### Install Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Bash

macOS comes with bash version 3. We need atleast version 4.

```bash
brew install bash
```

### Install dependencies

```bash
git clone https://github.com/Hologos/macos-setup.git ~/.macos-setup
cd ~/.macos-setup
./macos-setup
```

### Install dotfiles

```bash
cd ~/.dotfiles
./installation/bootstrap
zsh # or just close and open your terminal again.
```

### Setup SSH keys

Copy your SSH key to `~/.ssh` or create a new one.

Don't forget to fix permissions:

```bash
chmod 0700 ~/.ssh
chmod 0600 ~/.ssh/<key-filename>
```

### Setup GPG keys

Create default config files:

```bash
gpg --list-keys
```

Export the key from the old machine:

```bash
gpg --list-secret-keys

gpg --export-secret-keys C14AB940 > C14AB940.key
```

Import the key to the new machine:

```bash
gpg --import C14AB940.key
```

> Change C14AB940 with your key id.

Test it:

```bash
mcd /tmp/test
git init
set_git_identity
git commit --allow-empty -m 'signsss'
git log --show-signature
```

That's it!

### Reboot

```bash
sudo reboot
```

### Copy other stuff

Now you just have to copy all stuff you need from the old machine.

### Now you are all set

👏
