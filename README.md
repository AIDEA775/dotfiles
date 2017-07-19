## Dotfiles of Kiara

This look like this:

![Screenshot](/Screenshots/2017-07-18-234718_1366x768_scrot.png?raw=true)


#### This is a bare repo, to install this dotfiles follow the instructions:

1. Add alias to your .bashrc or .zsh:

   `alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

2. And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems: ¿?

   `echo ".dotfiles" >> .gitignore`

3. Clone your dotfiles into a bare repository:

   `git clone --bare https://github.com/AIDEA775/dotfiles.git $HOME/.dotfiles`

4. Checkout the actual content:

   `config checkout`

5. Set the flag showUntrackedFiles to no on this specific (local) repository:

   `config config --local status.showUntrackedFiles no`

Done!


#### TODO:

* Add requirements (i3, fonts, etc)
* Info about shortcuts (navigation, modes, open dmenu, etc)


#### Original tutorial here:

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
