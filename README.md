For this to work `.zshenv` has to be there in the `$HOME` directory since this is where we will be setting the environment variables

## Add the following to your `$HOME/.zprofile` file

```bash
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```

[Why use zprofile over zshenv](https://apple.stackexchange.com/questions/388622/zsh-zprofile-zshrc-zlogin-what-goes-where)

## Updating plugins

- If you want to update the plugins, the easiest way of doing it would be deleting the plugins folder.
  - Now when you open a new shell the repository will be cloned again. This is equivalent to updating the plugins

## Naming convention

- application: application specific. For eg: to have `alias ls=lsd` application lsd must be installed
- core: can be run on any system without any applications
- specific: specific to the system you are using

## References

- https://thevaluable.dev/zsh-install-configure-mouseless/
- https://www.youtube.com/watch?v=bTLYiNvRIVI
- https://github.dev/Mach-OS/Machfiles/tree/master/zsh/.config/zsh
