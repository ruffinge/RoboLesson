Markdown
========

An overview by Ethan Ruffing

Markdown is designed to be a universal markup language. One of the primary goals
of Markdown is that the source files should be readable as-is. That is, they
should appear well-formatted and cleanly laid out in their plain text version,
in addition to being easily interpreted for translation to other formats (such
as HTML, LaTeX, PDF, etc.).

Github-Flavored Markdown
------------------------
The most common variant of Markdown is Github-Flavored Markdown (GFM), which
adds several features to the list of recognized layouts. For example, there
is the ability to add syntax-highlighted code blocks, like this:
```c
static void main()
{
	printf("Hello, World!\n");
}
```

That was done by putting the following in the markdown source for this page:
``````````````````````````````
```c
static void main()
{
	printf("Hello, World!\n");
}
```
``````````````````````````````
