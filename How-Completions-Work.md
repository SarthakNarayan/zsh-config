- Zsh will look for ways to autocomplete by looking for `_*` files in one of the directories in `$fpath`.
- You can go through the contents of `$fpath` using `echo $fpath`
  - If you go to `/usr/share/zsh/5.8.1/functions` (present in fpath) you can see there are `_files` for completions. You will find `_ls`, `_cp` and so on.
- For any program installed by brew its completions must be present in the `$fpath`
- Generally programs installed from brew will have completions. So it is always a better choice to install from brew.
- If you see that the completion file is present in `$fpath` but tabbing only shows directories then try the following steps.

```bash
chmod go-w '/usr/local/share' #may not be needed, first try without this
trash $ZDOTDIR/.zcompdump; compinit
```

- You can check if completions are loaded or not using `which _brew` (to check if brew completions are loaded)

## References
- https://stackoverflow.com/questions/26462667/git-completion-not-working-in-zsh-on-os-x-yosemite-with-homebrew
- https://stackoverflow.com/questions/65747286/zsh-problem-compinit503-no-such-file-or-directory-usr-local-share-zsh-site
