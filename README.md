# dot

### Initialise Repo

- Rename the repo directory so that standard invocations of `git` ignore it
- Define a dedicated alias for convenience
- Ignore untracked files for efficiency

```
git config --global user.email github@0x7e.net
git config --global user.name 'Rob B'

alias dot='git --git-dir=$HOME/.dot --work-tree=$HOME'
dot init
dot config --local status.showUntrackedFiles no
dot add . . .
dot commit -m 'Initial commit'
dot remote add origin https://github.com/f4nb0y/dot.git
dot push --set-upstream origin main
```

### Clone Repo

- Can't `git clone` into an existing directory
- Can't `git clone --bare` because it doesn't setup remote-tracking

```
D=$(mktemp -d)
git clone --origin github https://github.com/f4nb0y/dot.git $D
mv $D/.git $HOME/.dot

alias dot='git --git-dir=$HOME/.dot --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot checkout --force
```

### References

- https://www.atlassian.com/git/tutorials/dotfiles
