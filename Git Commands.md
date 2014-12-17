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
git commit -m "Commit message" --author="Ethan Ruffing <ruffinge@gmail.com>"
```

Pushing and Pulling
-------------------
You must explicitly state when you want to push changes to the host. The main
host for a repository is known as `origin`. It is best to only keep your
`develop` and `master` branches on `origin`, and keep `feature` and `release`
branches stored locally from the time they are created to the time they are
deleted.

To push your changes to the host:
```sh
git push origin [branch-name]
```

To pull changes from the host:
```sh
git pull origin [branch-name]
```
(Note that this will pull the changes into whatever branch you are currently on,
so be sure you switch to the appropriate branch before pulling.)

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

To delete a (local) branch:
```sh
git branch -D [branch-name]
```

Logs
----
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
