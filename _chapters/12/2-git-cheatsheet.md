---
subtitle: Git Cheatsheet
summary: A quick reference for common Git-related tasks
layout: default
index: 12.2
---

# Git Cheatsheet

This page is a quick reference of common Git commands that we'll be using in this course.

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

## Shortcut to commit all modified files with one command

```sh
git commit -am "my commit message"
```

## Tag a finished lab or resubmission and push it to GitHub

```sh
git tag v0.X.X # replace X.X with the appropriate version numbers
git push
git push v0.X.X
```
