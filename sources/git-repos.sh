#! /usr/bin/env bash

declare -A repos_to_install
repos_to_install+=(["https://github.com/tmux-plugins/tpm.git"]="${HOME}/.tmux/plugins/tpm")
repos_to_install+=(["https://github.com/Hologos/dotfiles.git"]="${HOME}/.dotfiles")
