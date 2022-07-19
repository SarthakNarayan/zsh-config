#!/bin/sh

# Souring the functions file
source "$ZDOTDIR/zsh-functions"

# files to source
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

## extras
zsh_add_file "zsh-prompt" #starship

# should be below settings: https://github.com/sorin-ionescu/prezto/issues/1798
zsh_add_file "zsh-vim-mode"

# plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# for including zsh completions that are not present
fpath+="$ZDOTDIR/completions"
compinit # even though present in settings/core for some reason I have to call it here to get my brew completions working
