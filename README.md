
# ZSH config

## ZSH files

ZSH can be configured with the following files:
| File Name             | Invocation Order | Purpose                                                                 | Typical Contents                                  |
|-----------------------|------------------|-------------------------------------------------------------------------|---------------------------------------------------|
| `.zshenv`             | 1                | Always sourced; used for setting environment variables and system paths.| Environment variables settings.             |
| `.zprofile`           | 2                | Sourced at login; often used for the same purpose as `.zshenv`.         | PATH, Commands that should run at login.                |
| `.zshrc`              | 3                | Sourced for interactive shells; main configuration file.                | Aliases, functions, shell options, prompt themes. |
| `.zlogin`             | 4                | Sourced at login after `.zshrc`; can be used for login-specific tasks.  | Login scripts, welcome messages.                  |
| `.zlogout`            | 5 (at logout)    | Sourced when login shells exit.                                         | Cleanup tasks, printing logout messages.          |

To set a configuration environment which is not in $HOME (which is the default) there should be a file in root called `.zshenv` similar to the following line:

```zsh
export ZDOTDIR=$HOME/.config/zsh/
```

ZSH will then look in `$HOME/.config/zsh/` for the configuration files.

The files in `src` are sourced in `.zshenv`.

## Plugins, Completions, Histfile

All generated files will be in `$ZSH_DATA_HOME` (which is defined in `.zshenv`).

I use [Antidote](https://getantidote.github.io/) as a plugin manager. It clones zsh plugin repos and sources them. Plugins are defined [here]('./.zsh_plugins.txt').
