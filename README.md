# obsh
[Ob][sh]idian a shell CLI for querying data from obsidian vaults. 
Useful for automation and composing [obsidian vim snippets](https://github.com/cristianoliveira/dotfiles/blob/main/nvim/mysnippets/markdown.snippets)

## Usage

```sh
obsh --help
```

```
Obashidian - Obsidian Shell CLI (obsh)

Query data from Obsidian vault for analysis and automation directly from the command line.

Usage:
obsh <cmd> <args>
obsh tag <tag>                   - Search for a tag in the vault
obsh reminder [date/dayofweek]   - Search for reminders for a specific date
obsh reminders                   - Search for all reminders
obsh block <block>               - Search for a block in the vault
obsh section <section>           - Search for a section in a file
obsh daily                       - Generate a daily note template

Options:
  -h, --help    Show this screen.
```

## Install

```sh
git clone https://github.com/cristianoliveira/obsh.git $HOME/.obsh

mkdir -p $HOME/bin
ln -s $HOME/.obsh/obsh $HOME/bin

export PATH="$HOME/bin:$PATH"
```
