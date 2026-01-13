#!/usr/bin/env bash

#set -x

[ ! -z "$SUDO_USER" ] && print_err "You can't run this script as root." && exit 1

mkdir -p ${HOME}/.config/niri
ln -sf ${HOME}/dotfiles/.config/niri/config.kdl ${HOME}/.config/niri/config.kdl

mkdir -p ${HOME}/.config/fish
ln -sf ${HOME}/dotfiles/.config/fish/config.fish ${HOME}/.config/fish/config.fish

mkdir -p ${HOME}/.config/kitty
ln -sf ${HOME}/dotfiles/.config/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf

mkdir -p ${HOME}/.config/satty
ln -sf ${HOME}/dotfiles/.config/satty/config.toml ${HOME}/.config/satty/config.toml

mkdir -p ${HOME}/.config/mako
ln -sf ${HOME}/dotfiles/.config/mako/config ${HOME}/.config/mako/config



