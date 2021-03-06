[Go back to README](../README.md)

## Commands

The following are the custom commands in Jarvis and some of the most useful default ones. Each configuration
file is carefully documented to make it easy to understand. Many default commands for each tool may not be listed.

### Neovim Commands

> Note: Several of the commands expect you to be in the directory you are working in. Fuzzy finding, for example, won't work as expected unless Neovim's current directory is correct. You can check that via `:pwd` inside of Neovim.
>
> Either open Neovim from the directory you want to work in, or set the directory once Neovim is open via the `:cd /path/to/directory` command.

| Command              | Mode            | Tool                            | Description                                         |
| :-----------         | :-------------- | :------------------------------ | :---------------------------------------            |
| `<Space>`            | normal          | NeoVim                          | Page down                                           |
| `-`                  | normal          | NeoVim                          | Page up                                             |
| `<c>hjkl`            | normal          | NeoVim                          | Switch windows and Tmux panes (left/down/up/right)  |
| `<leader>h`          | normal          | NeoVim                          | Find and replace                                    |
| `<leader>/`          | normal          | NeoVim                          | Clear highlighted search terms                      |
| `<leader>f`          | normal          | NERDTree                        | Find current file in tree hiearchy                  |
| `<leader>n`          | normal          | NERDTree                        | Toggle NERDTree window                              |
| `C`                  | normal     *NT* | NERDTree                        | Switch NERDTree root to be directory under cursor   |
| `<leader>y`          | normal          | vim-better-whitespace           | Remove trailing whitespace in file                  |
| `<leader>w`          | normal          | EasyMotion                      | Highlight first letter of file words for quick move |
| `<leader>wi`         | normal          | VimWiki                         | Enter VimWiki Diary                                 |
| `<leader>w<leader>w` | normal          | EasyMotion                      | Enter Today Diary Entry                             |

<br />

### Tmux Commands
Below are some custom key mappings as well as some default tmux commands. Not all tmux commands are included,
just some of the more common ones in my workflow.

#### Prefix Mappings
| Command          | Description                                                      |   |
| :--------------- | :---------------------------------------                         |   |
| `<c-a>I`         | Install tmux plugins                                             |   |
| `<c>(h/j/k/l)`.  | Switch Tmux panes and Neovim windows (left/down/up/right)        |   |
| `<c-a>(H/J/K/L)` | Resize Tmux panes based on current pane (left/down/up/right)     |   |
| `<c-a>%`         | Create split horizontally                                        |   |
| `<c-a>(PIPE)`;   | Create split vertically                                          |   |
| `<c-a>x`         | Close pane                                                       |   |
| `<c-a>$`         | Rename session                                                   |   |
| `<c-a>s`         | Browse open sessions - navigate with h/j/k/l and enter to select |   |
| `<c-a>z`         | Full-screen the current pane                                     |   |

#### Tmux Command Line
All of the following command are triggered by `<c-a>:` (Note the colon)

| Command                | Description                        |
| :--------------------- | :------------------------------    |
| `new -s test`          | Create new session named "test"    |
| `kill-session -t test` | Delete session named "test"        |
| `kill-session -a`      | Kill all sessions but current one  |

<br />

### Zsh Commands
All the following commands can be run from the command line. Each command can be run by typing command and pressent `<enter>`. Some commands have optional parameters.

| Command                | Description                                                            |
| :--------------------- | :------------------------------                                        |
| `fo`                   | Fuzzy-find file in current directory and open with Neovim              |
| `fh`                   | Fuzzy-find in command history                                          |
| `fgb <*branch_name>`.  | Git checkout local/remote branch by name or fuzzy-find                 |
| `ftm <*session_name>`  | Switch to session name if given, create if doesn't exist or fuzzy-find |
| `ftmk <*session_name>` | Kill given session or fuzzy-find session to kill                       |
| `unset_https_proxy`    | unset proxy                                                            |
| `set_https_proxy`      | set proxy                                                              |
| `st`                   | Sexy Text                                                              |

<br />

* `*`  - Indicates optional param
