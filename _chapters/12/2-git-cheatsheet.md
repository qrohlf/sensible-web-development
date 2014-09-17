---
subtitle: Git Cheatsheet
summary: A quick reference for common Git-related tasks
layout: default
index: 12.2
---

# Git Cheatsheet

This page is a quick reference of common Git tasks.

## Initialize a repository

```sh
mkdir my-repo
cd my-repo
git init
```

## Add all modified and new files to a commit

```sh
git add -A
```

## Shortcut to specify a commit message on the command line

```sh
git commit -m "my commit message"
```

## Shortcut to commit all modified files with one command

```sh
git commit -am "my commit message"
```

## My commit messages are opening in emacs/vim/nano

See https://help.github.com/articles/associating-text-editors-with-git to change your default text editor to use with git.

## Should I commit my changes?

Yes.

## Tag a finished lab or resubmission and push it to GitHub

```sh
git tag v0.X.X # replace X.X with the appropriate version numbers
git push
git push v0.X.X
```
