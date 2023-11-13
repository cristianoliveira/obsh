# obsh

[Ob][sh]idian a shell CLI for querying data from obsidian vaults. 
Useful for automation and composing [obsidian vim snippets](https://github.com/cristianoliveira/dotfiles/blob/main/nvim/mysnippets/markdown.snippets)

## How do I use it?

Assuming you use Obsidian's Daily Notes feature, you can use `obsh` to generate 
a template of your daily notes. It creates a link between the current note and
yesterday's note + tomorrow's note.

During the day add notes on the section `## Inbox` of your daily note there goes
all the random thoughts you have during the day and items you need to accomplish. 
I personally like the [Getting Things Done methodology](https://en.wikipedia.org/wiki/Getting_Things_Done).

For instance:

 - Mark lines as items #todo for things you need to remember on your daily note
 - Mark lines with #assumption for things you have to check later to validate your assumptions
 - Mark lines with #reminder:{date} for things you need to remember on a specific date.
 - Mark lines with #reminder:{dayoftheweek} for things you need to remember on a specific day of the week (recurrent)
 - Mark lines with #waiting for things you are waiting for someone or something.

Then run `obsh daily` to generate a daily note with all the items you marked.

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
