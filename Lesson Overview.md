A Lesson on Version Control and Programming Documentation
=========================================================
By Ethan Ruffing

Order of Topics
---------------
1. Getting started
2. Git and version control
3. Proper project design
4. Proper documentation of programs
5. Style guide usage
6. A complete example

Getting Started
--------------
1.  Install git from the [git-scm website](http://git-scm.com/download/mac).
2.  Install SourceTree from [its website](http://www.sourcetreeapp.com/).
3.  Create account on [GitHub](https://github.com/).
4.  Create folder for local repositories and move into it:
```sh
mkdir git
cd git
```
5.  Clone this lesson repository:
```sh
git clone https://github.com/ruffinge/RoboLesson.git
```
6.  Open this file.
7.  Begin working through tutorial
    [here](https://www.atlassian.com/git/tutorials/setting-up-a-repository).

    * Note that you should not set a global `user.name` or `user.email` because
      of the shared nature of your account on the computer. Instead, when
      when committing, do the following:
```sh
git commit -m "Commit message." --author="Ethan Ruffing <ruffinge@gmail.com>"
```

Version Control Using Git
-------------------------
* [Excellent tutorial](https://www.atlassian.com/git/tutorials/setting-up-a-repository)
* Github for hosting
* [Gitflow](http://nvie.com/posts/a-successful-git-branching-model/), the
  preferred branching workflow for this situation
