#!/bin/sh

# Souring the functions file
source "$ZDOTDIR/zsh-functions"

# files to source
zsh_add_file "zsh-prompt" #starship
zsh_add_file "zsh-vim-mode"

## settings
zsh_add_file "settings/core"
zsh_add_file "settings/application"
zsh_add_file "settings/specific"

## aliases
zsh_add_file "aliases/core"
zsh_add_file "aliases/application"
zsh_add_file "aliases/specific"

## exports
zsh_add_file "exports/core"
zsh_add_file "exports/application"
zsh_add_file "exports/specific"

# plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
