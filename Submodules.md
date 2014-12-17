Git Submodules
==============
by Ethan Ruffing

Git uses submodules to allow you to place one git repository inside of another.
This way, the inner one can still be tracking the outer one, and all submodules
can be managed together.

To add a git repository as a submodule to your repository, do the following:

```sh
git submodule add http://url-of-repository-to-add/repo.git path/to/place/it/in
```

This will place the entire contents of the new repository in the specified path.

Now, when you pull your repository to another computer, to pull in the contents
of the submodule, you must run:

```sh
git submodule update --init --recursive
```

