# Americo's dotfiles\*

\*Kinda. Some manual, some automated

## First things first - Terminal benefits

Terminal feature highlights:

- Case insensitive completion
- Hyphen insensitive completion (- or \_)
- Command autocomplete
- Previous command navigations filtered by current input
- Display of git status on prompt

![End result](https://github.com/azuzunaga/dotfiles/blob/master/images/end_result.gif)

### Install the Xcode Command Line tools.

1. Make sure that Xcode is installed and updated in the App Store.
2. Install the tools

```
xcode-select --install
```

### Downloads

Note: All code blocks should be run on the terminal.

1. Install `homebrew`:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install brew packages

```bash
./brew.sh
```

3. Install iterm2:

```bash
 brew cask install iterm2
```

4. Install `oh-my-zsh`:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

5. Download modifications

```bash
cd ~/.oh-my-zsh
git remote add fork https://github.com/azuzunaga/oh-my-zsh.git
git pull remote
git push -u fork master
```

6. Install the Powerlevel9k theme

```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

7. Install `smartless`

```bash
curl https://raw.githubusercontent.com/stefanheule/smartless/master/smartless -o /usr/local/bin/smartless
chmod +x /usr/local/bin/smartless # <-- mark it as executable
```

8. Install `zsh-autosuggestions`

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

9. Install `zsh-completions`

```bash
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

10. Install prompt syntax highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

11. Fork and clone this repo (`https://github.com/azuzunaga/dotfiles`).

- Optional, but recommended: Create a `~/Programming` directory and place the `dotfiles` repo there, so that the end path of the repo is `~/Programming/dotfiles`. This guide assumes this structure, but feel free to change the commands to match your actual `dotfiles` path.

#### Other downloads

- cheat.sh

```bash
brew install rlwrap
mkdir ~/bin #if you don't already have a bin dir in your source dir
curl https://cht.sh/:cht.sh > ~/bin/cht.sh
chmod +x ~/bin/cht.sh
```

### Setting up the configuration files

The dotfiles repo has all the files necessary to get you up and running. There are two options to get the files where they need to be: copy or symlink.

Copying the files is the easiest, but symlinks will allow the repo to stay up to date with all the configuration changes.

Here are the locations where the files should end up:

| File type                     | Location                |
| ----------------------------- | ----------------------- |
| dotfiles (start with a `.`)   | Home directory (`~`)    |
| `com.googlecode.iterm2.plist` | `~/Library/Preferences` |
| Fonts (in `Fonts` directory)  | `~/Library/Fonts`       |

Run the following commands to symlink the files to the correct places:

Dotfiles to source directory:

```bash
ln -sf ~/Programming/dotfiles/.*[^.git] ~
ln -sf ~/Programming/dotfiles/.gitconfig ~
```

iterm2 plist file to preferences folder:

```bash
ln -sf ~/Programming/dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/
```

Fonts can be copied:

```bash
cp ~/Programming/dotfiles/fonts/* ~/Library/Fonts
```

### Running it!

Completely quit the terminal and iterm2 applications. Now open iterm2 and everything should be ready! To make the terminal drop down press the `control` key twice.

And that's it!

## Changing mac settings

Just run `./.macos`.

## Install Postgres App.

This is the PostgreSQL server we'll be using. Download it
[here](http://postgresapp.com/).

Once it's been installed, open it up. You'll need to click through the
dialog warning you about the dangers of internet downloads.

## Thanks to...

[Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
