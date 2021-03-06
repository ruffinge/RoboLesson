Lesson Overview
===============
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
2.  Install git-flow following
    [these instructions](https://github.com/nvie/gitflow/wiki/Installation).
3.  Install SourceTree from [its website](http://www.sourcetreeapp.com/).
4.  Install doxygen by following
    [these instructions](http://www.stack.nl/~dimitri/doxygen/download.html).
5.  Create account on [GitHub](https://github.com/) or
    [Bitbucket](https://bitbucket.org/). (We will discuss the pros/cons of each
    hosting service.)
6.  Create folder for local repositories and move into it:
```sh
mkdir git
cd git
```
7.  Clone this lesson repository:
```sh
git clone https://github.com/ruffinge/RoboLesson.git
```
8.  Update this lesson repository's submodules:
```sh
git submodule update --init --recursive
```
9.  Open this file.
10. Begin working through tutorial
    [here](https://www.atlassian.com/git/tutorials/setting-up-a-repository).

    * Note that you should not set a global `user.name` or `user.email` because
      of the shared nature of your account on the computer. Instead, when
      when committing, do the following:
```sh
git commit -m "Commit message." --author="Ethan Ruffing <ruffinge@gmail.com>"
```

Complete Examples
-----------------
The following two repositories show projects which I have completed. They
demonstrate proper use of all concepts which are covered in this lesson.

Chess Game (in Java): <br />
https://bitbucket.org/eruffing/chess.git

Arduino Benchmarking System (in C): <br />
https://bitbucket.org/eruffing/arduinobenchmark.git
