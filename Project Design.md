Project Design
==============
by Ethan Ruffing

Folders
-------
* All files related to a project should be placed in a folder whose name
  corresponds to that project.
* Subfolders should be used where appropriate.
	- Example: a folder for documentation, one for sources, one for binaries

File Names
----------
* Files should be named according to what they represent.
* File names should *never* start with a number (written numbers are fine,
  digits are not).

Documentation
-------------
### README File ###
There should be several levels of program documentation. The first should be a
`README` file located in the top level folder of the project. This document
should provide a brief overview of the purpose of the program, its author(s),
and pertinent licensing/copyright information. It should also give a brief
overview of where to look for further documentation on various aspects of the
program.

A good way to develop the `README` file is to use Markdown, a language developed
to be easily interpreted for HTML and PDF conversion, as well as to be easily
readable and nicely formatted in its source code. If using markdown, name the
`README` file `README.md`. See `Markdown.md` for more information.

### API Documentation ###
The output of automatically-generated API documentation should be located
in an easily accessible folder near the root of the project (for example, in
a subfolder named `doc`).

### Changelog ###
It is a good idea to include a changelog, where major changes are listed by
version number. This should be included in a file named `CHANGELOG`.

License
-------
If using a license, be sure to include the appropriate files as required by the
license (usually included in a file named `LICENSE`).
