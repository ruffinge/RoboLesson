Basic Git Commands
==================
by Ethan Ruffing

This page is meant to be a *very* brief overview of some basic commands in git.
You **will** need to use more commands than are displayed here. There are
numerous suitable references available in multiple locations online.

Committing
----------
To make a commit:
```sh
git commit -m "Commit message" --author "Ethan Ruffing <ruffinge@gmail.com>"
```

Branching
---------
To create and checkout a new branch:
```sh
git checkout -b new-branch old-branch
```

To merge another branch into the current one:
```sh
git merge to-merge --commit -m "Merge branch 'to-merge' into current-branch"
```

Log
---
To display a basic log of commits:
```sh
git log
```

To display a log in a graph view (to see the branching that has been used):
```sh
git log --graph
```

To display a log of all commits in a graph view (to see the branching that has been used):
```sh
git log --graph --all
```

To display a simple graph model of all commits (useful for viewing an overview
of branching and commit history):
```sh
git log --graph --all --oneline
```
or
```sh
git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
```
or
```sh
git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
```
