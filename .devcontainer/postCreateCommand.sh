#!/bin/bash
set -x

cp /root/.gitconfig_mounted /root/.gitconfig \
&& cp -rp /root/.ssh_mounted/* /root/.ssh/ \
&& git config --global --add safe.directory /workspaces/demo-devcontainer \
&& pre-commit install \
&& zsh
