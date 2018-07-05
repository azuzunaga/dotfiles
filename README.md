# Americo's dotfiles*
\*Kinda. All manual for now.

## First things first - Getting the terminal set-up
Terminal feature highlights:
* Case insensitive completion
* Hyphen insensitive completion (- or \_)
* Command autocomplete
* Previous command navigations filtered by current input
* Display of git status on prompt

![End result](https://github.com/azuzunaga/dotfiles/blob/master/images/end_result.gif)

### Downloads
Note: All code blocks should be run on the terminal.
1. Install `homebrew`:

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

2. Install `zsh`
  ```bash
  brew install zsh
  ```

3. Install iterm2 by downloading it from this link: https://iterm2.com/downloads.html

4. Install `oh-my-zsh`:

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  ```

5. Install the Powerlevel9k theme

  ```bash
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
  ```

6. Install `ccat` (color cat)
  ```bash
  brew install ccat
  ```

7. Install `smartless`
  ```bash
  curl https://raw.githubusercontent.com/stefanheule/smartless/master/smartless -o /usr/local/bin/smartless
  chmod +x /usr/local/bin/smartless # <-- mark it as executable
  ```

8. Install `coreutils`
  ```bash
  brew install coreutils
  ```
9. Fork and clone this repo (`https://github.com/azuzunaga/dotfiles`).
  * Optional, but recommended: Create a `~/Programming` directory and place the `dotfiles` repo there, so that the end path of the repo is `~/Programming/dotfiles`. This guide assumes this structure, but feel free to change the commands to match your actual `dotfiles` path.

### Setting up the configuration files
The dotfiles repo has all the files necessary to get you up and running. There are two options to get the files where they need to be: copy or symlink.

Copying the files is the easiest, but symlinks will allow the repo to stay up to date with all the configuration changes.

Here are the locations where the files should end up:

File type | Location
-|-
dotfiles (start with a `.`) | Home directory (`~`)
`com.googlecode.iterm2.plist` | `~/Library/Preferences`
Fonts (in `Fonts` directory) | `~/Library/Fonts`

Run the following commands to symlink the files to the correct places:

Dotfiles to source directory:
```bash
ln -sf ~/Programming/dotfiles/.*[^.git] ~/Programming/test
```

Plist file to preferences folder:
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

First, set finder to display the full path and folder information on the bottom:

![Finder settings](https://github.com/azuzunaga/dotfiles/blob/master/images/finder_view_settings.png)

Now, configure the dock:

![Dock settings](https://github.com/azuzunaga/dotfiles/blob/master/images/settings_dock.png)

Next, mission control:

![Mission control](https://github.com/azuzunaga/dotfiles/blob/master/images/settings_mission_control.png)

And finally, hot corners:

![Hot corners](https://github.com/azuzunaga/dotfiles/blob/master/images/settings_hot_corners)
