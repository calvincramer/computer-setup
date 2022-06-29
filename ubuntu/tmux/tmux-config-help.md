# Help when configuring tmux
- close all tmux sessions. Sometime tmux will not pick up changes to the config file
- run `tmux show-options -g` to show default options

- change pane title:
	- set: `printf '\033]2;%s\033\\' 'title goes here'`
	- set: `tmux select-pane -T title`

# Etc
```
bind-key / command-prompt "split-window 'exec man %%'"

command-prompt
run-shell
```
