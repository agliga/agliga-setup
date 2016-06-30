## My development setup

This contains script setups for development build

This project contains environment setup for [Atom](https://atom.io/), [Intellij](http://www.jetbrains.com/), [z-shell](http://www.zsh.org/), [Tmux](https://tmux.github.io/), [Vim](http://www.vim.org/), and standard terminal.


### To deploy to your system
This will replace all current user system settings. A restart of terminal/editors is a good idea.

```shell
bin/deploy-setup.sh
```

_**Note:** This will override all user settings. A good backup before-hand is recommended_

### To save changes from system to project

```shell
bin/update-setup.sh
```

This will use the current path where update-setup.sh is located.

### TODO
- Change script to only selectively update files
- Add more editors
- More cowbell
