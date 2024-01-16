# System Development-focused Vim: Lightweight yet Comprehensive

This is my personalized Vim configuration, specifically tailored for system development with a focus on C programming. However, utilizing `coc.nvim`, you can effortlessly customize the development environment for other programming languages.

Furthermore, my configuration is lightweight and modularized, making it straightforward for you to extend and adapt to more complex setups.

## Contents

- [Requirements](#requirements)
- [Installation Guide](#installation-guide)
- [Keybendings](#keybindings)
- [Plugin](#plugin)
- [License](#license)

## Requirements

- vim 9.0+ (for sms) with python3 support
- ripgrep
- fd
- nodejs >= 12.0
- [Universal ctags](https://ctags.io) >= 6.0
- A terminal emulator with true-color support (for the light-pink theme)

## Installation guide

You need to clone this repo into your home directory:

```bash
git clone https://github.com/forceofsystem/dotvim.git
```

and then you run `vim` in your terminal. Press `esc` to skip the warning prompted by the missing plugin, use `:PlugInstall` to install the plugin with `vim-plug`. After the plugin's installation, `LeaderF` will compile something for itself and `Coc.nvim` will automitically install `coc-json`, `coc-clangd`, `coc-vimlsp`, respectively.

Then, quit and restart  `vim` to enjoy my configuration.

## Keybindings

Keybinding are in two parts: one for common bindings and the other for plugin's bindings.

### Common Bindings

**The leader key is space.**

#### Cursor Movement

| Command | Default | Description                      |
| ------- | ------- | -------------------------------- |
| j       | h       | move cursor to the left for one  |
| k       | j       | move cursor down for one         |
| l       | k       | move cursor up for one           |
| ;       | l       | move cursor to the right for one |
| h       | :       | enter the command mode           |

#### Window Split

| Command    | Default                            | Description                                                  |
| ---------- | ---------------------------------- | ------------------------------------------------------------ |
| sj         | :set nosplitright\<CR>:vsplit\<CR> | Vertically split the window with the cursor in the left pane. |
| sk         | :set splitbelow\<CR>:split\<CR>    | Horizontally split the window with the cursor in the bottom pane. |
| sl         | :set nosplitbelow\<CR>:split\<CR>  | Horizontally split the window with the cursor in the top pane. |
| s;         | :set splitright\<CR>:split\<CR>    | Vertically split the window with the cursor in the right pane. |
| \<leader>j | :wincmd h\<CR>                     | Move the cursor to the left pane.                            |
| \<leader>k | :wincmd j\<CR>                     | Move the cursor to the bottom pane.                          |
| \<leader>l | :wincmd k\<CR>                     | Move the cursor to the top pane.                             |
| \<leader>; | :wincmd l\<CR>                     | Move the cursor to the right pane.                           |

#### Tab Management

| Command | Default        | Description                     |
| ------- | -------------- | ------------------------------- |
| \<C-u>  | :tabe\<CR>     | move cursor to the left for one |
| \<C-k>  | :-tabnext\<CR> | move cursor down for one        |
| \<C-l>  | :+tabnext\<CR> | move cursor up for one          |

### Plugin Bindings

The plugin bindings are defined in their respective configuration files located at `.vim/plugin/{plugin's name}.vim`. To review specific key bindings, you can access the configuration files associated with each plugin, such as `coc.vim`.

## Plugin

### Plugin Management

I use [vim-plug](https://github.com/junegunn/vim-plug) to manage the vim plugin.

If you want to install/uninstall plugin, add/remove the specific plugin into/from `.vim/plugin/plug.vim`, then run `source $MYVIMRC` or restart the vim to run `PlugInstall`/`PlugClean`.

For more details about to manipulate the plug, please check the [vim-plug](https://github.com/junegunn/vim-plug)'s document.

### Input Enhancement

| Plugin's name                                             | Description                                                  |
| --------------------------------------------------------- | ------------------------------------------------------------ |
| [vim-surround](https://github.com/tpope/vim-surround)     | Delete/change/add parentheses/quotes/XML-tags/much more with ease. |
| [wildfire](https://github.com/gcmt/wildfire.vim)          | Smart selection of the closest text object.                  |
| [vim-unimpaired](https://github.com/tpope/vim-unimpaired) | Pairs of handy bracket mappings.                             |

### Language Support

| Plugin's name                                                | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Coc.nvim](https://github.com/neoclide/coc.nvim)             | Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers. |
| [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) | A Vim plugin that manages your tag files.                    |
| [copilot.vim](https://github.com/github/copilot.vim)         | Neovim plugin for GitHub Copilot.                            |
| [LeaderF](https://github.com/Yggdroot/LeaderF)               | An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc. on the fly for both vim and neovim. |
| [vim-snippets](https://github.com/honza/vim-snippets)        | vim-snipmate default snippets.                               |

## License

[MIT](./LICENSE)