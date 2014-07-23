---
subtitle: Git & GitHub
summary: How to turn in assignments via GitHub
layout: default
index: 0.4
---

# Turning in assignments with GitHub

<div class="alert alert-warning">
	This chapter assumes that you've already created a <a href="https://github.com/join">GitHub account</a> and completed the <a href="http://try.github.io">Try Git</a> tutorial. Please make sure you've done both before continuing.
</div>

We will be using Git to track the history of our code for this course, and GitHub to host an online and public version of our Git repositories. To set this up, you'll need to *initialize* a Git repository in the directory where your work for this class lives, then *push* the code to a remote repository on GitHub.

## Initializing a repository

First, you should make sure that all of your lab files for the class are in a single directory. Mine is called "webdev", and it looks like this:

```sh
$ ls webdev
index.html style.css
```

Your directory for assignment 0 will probably look a lot like mine - just an html file and an optional css file. Right now, this is just a normal directory. Our next step is to create a *Git repository* in the directory. Since you already installed Git in section 0.1, all you need to do to setup a repository is this:

```sh
cd webdev
git init
```

Git is now set up to track the history of your directory! To see how this works, run

```sh
git status
```

You should see a message about untracked files with a list of all of your files in the directory. I'm going to add all of my files to git with

```sh
git add -A
git commit -m "Initial commit"
```

Our next step is to push the repo to GitHub

## Setting up GitHub

To push our local work to GitHub, we will need to set up a *Git remote* that points to our GitHub account. The first step is to login to GitHub and create a new repository.

![](/images/github-create.png)

Name your repository `webdev` and give it a short description. Make sure that the "Initialize this repository with a README" box is **unchecked**.

![](/images/github-name.png)

Click the green "Create Repository" button to finish creating your repo. You'll be taken to a page with instructions on how to setup your local repository. We're going to follow the "Push an existing repository from the command line" instructions:

```sh
cd webdev # make sure you're in your labs directory
git remote add origin git@github.com:qrohlf/webdev.git # use the url shown on GitHub
git push -u origin master # set up the master branch to track origin/master on GitHub
```

You just *pushed* your local repository to GitHub. If you go to `https://github.com/qrohlf/webdev` (replace `qrohlf` with your own username) you will see your code!

<div class="alert alert-info">Tip: If you don't want to have to type your password every time you push to GitHub, follow the <a href="https://help.github.com/articles/generating-ssh-keys">GitHub documentation</a> to set up SSH Keys and push over SSH.</div>

Now let's talk about assignments.

## Working on and turning in assignments

The code that we just pushed to GitHub probably wasn't quite finished yet. Even so, it's useful to push your work-in-progress sometimes - it can serve as a remote backup, it lets you work on your code on multiple machines, and it's handy to be able to show your code to someone who's helping you. 

This presents a problem: how do you keep track of which revision of your code corresponds to which lab assignment? The answer is Git tags. Git tags are like labels that you can pin on a specific revision of your code. They're typically used to track *releases* of code. In this class, each finished lab is like a release.  You'll be working on labs and pushing code to GitHub on a regular basis. When each lab is done, you will tag it with the corresponding tag and push it to GitHub, and then you can start working on the next lab.

That means that your workflow for the class will probably look like this:

1. write code
2. commit code
3. push new commits to GitHub every so often
4. repeat 2-3 as needed
5. when you're finished with a lab, `git tag` it with the appropriate tag and push it to GitHub

## Example

Let's say I've done some more work on Lab 0 and added a few more items to my todo list stored in `index.html`.  Here's what my `git status` output looks like:

```sh
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   index.html
	modified:   style.css

no changes added to commit (use "git add" and/or "git commit -a")
```

I'll commit those changes and push them to GitHub

```sh
git add .
git commit -m "example code for Lab 0"
git push
```

Let's say I'm happy with my Lab 0 now - it meets all of the requirements. I'll *tag* my latest commit with the `v0.0.0` tag and then push the tag to GitHub:

```sh
git tag v0.0.0
git push # push the commits
git push origin v0.0.0 # push the tag
```

If you go to your Github repository and click the "Releases" tab, you should now see something like this:

![](/images/github-tag.png)

Congrats! You've just pushed your first assignment to GitHub.

One issue that might come up is you notice a small error in the code you've tagged as your assignment submission. It's generally considered bad practice to remove Git tags though, so what should you do?

The answer is simple: we're following [sematic versioning](http://semver.org) practices in this class, so to resubmit your assignment just push a new tag with the minor version number incremented (i.e. `v0.0.1):

```sh
vim index.html # fix mistake
git add index.html
git commit -m "Demo pushing an assignment resubmission"
git tag v0.0.1
git push
git push origin v0.0.1
```

If you're resubmitting before I've given you feedback on the assignment, that's all you need to do. However, if I've already given you feedback on a previous submission for the lab and you'd like feedback on your resubmission, make sure you send me an email!

## Summary

While Git can seem confusing at first, it's a very helpful thing to know how to use well and you are pretty much guaranteed to use it if you work in software. In this lesson we discussed how to initialize a Git repository locally, set it up to push to GitHub, and how to specify releases with Git tags and push them to GitHub.