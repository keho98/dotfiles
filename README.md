# dotfiles
Personal Dotfiles

## Features
- gitignore
- sets up zsh using oh-my-zsh

## Installation

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
* Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`

You can safely run `rcup` multiple times to update:

    rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

### Installing Dependencies and Packages (Optional)

This optional step will install a bunch of common packages required in frontend development
as well as Data Science/ML Programming with Python.

```sh
git clone https://github.com/keho98/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x setup.sh
./setup.sh
```

## Thanks to...
The following people and repositories below below as a reference: 
- [nicksp/dotfiles](https://github.com/nicksp/dotfiles)
- [frnsys/dippindots](https://github.com/frnsys/dippindots)
- [webpro/dotfiles](https://github.com/webpro/dotfiles)
- [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
