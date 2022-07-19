# CLI-Tools Tips

Some tips on using the CLI tools

## bat

Bat can stand in for the cat command, with added features like syntax highlighting, git integration,
and automatic paging. Bat leverages the popular Rust library `syntect` for syntax highlighting
using Sublime Text syntax definitions.

Bat Documentation:
<https://github.com/sharkdp/bat>

### Install directions

Download latest release from <https://github.com/sharkdp/bat/releases>

For debian releases:
`dpkg -i <downloaded package>`

sample commands:

```bash

bat > note.md  # quickly create a new file
bat header.md content.md footer.md > document.md
bat -n main.rs  # show line numbers (only)
bat f - g  # output 'f', then stdin, then 'g'.

# highlighting help

# in your .bashrc/.zshrc/*rc
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}
```

## ripgrep

ripgrep is a command line tool that searches your files for patterns that you give it. ripgrep
behaves as if reading each file line by line. If a line matches the pattern provided to ripgrep,
then that line will be printed. If a line does not match the pattern, then the line is
not printed.

Debian: `sudo apt-get install ripgrep`

Rip Grep Documentation: <https://github.com/BurntSushi/ripgrep>

## fd-find

## fzf

fzf documentation: <https://github.com/junegunn/fzf>

## tmux

## httpie

## exa

`exa` is an improved file lister with more features and better defaults. It uses colours to distinguish file types and metadata. It knows about symlinks, extended attributes, and Git. 
And it’s small, fast, and just one single binary.

for debian: `apt install exa`

```bash
# command to run exa with some useful options:
exa -abghli
```

May also want to set an alias for this command
