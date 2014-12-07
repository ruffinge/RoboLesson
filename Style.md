Basic Style Conventions
=======================
By Ethan Ruffing


Program Order
-------------
Your program should follow a logical order. All functions should be *declared*
before the `main` function, but none should be *defined* until after the `main`
function (in your case, treat the `vexAutonomous` and `vexOperator` functions as
the `main` function).

*ALL* preprocessor statements should be at the beginning of the file, preceded
*only* by the file's header comment block.

```c
#include <stdio.h>
#include "vex.h"

#define PI 3.14159
#define BACKRIGHT kVexMotor_1
```


Paragraphing
------------
There should *always* be a blank line between *all* functions:

```c
void vexAutonomous()
{
	// Stuff
}

int doStuff()
{
	// Stuff
}
```

There should not be a return within a function declaraction/definition line.

Bad:
```c
void
moveFunc(int ch1, int ch2, int ch4)
{
	vexMotorSet(motBackRight,   ch1 - ch2 + ch4);
	vexMotorSet(motFrontRight, -ch1 - ch2 + ch4);
	vexMotorSet(motBackLeft,   -ch1 - ch2 - ch4);
	vexMotorSet(motFrontLeft,   ch1 - ch2 - ch4);
}

```

Good:
```c
void moveFunc(int ch1, int ch2, int ch4)
{
	vexMotorSet(motBackRight,   ch1 - ch2 + ch4);
	vexMotorSet(motFrontRight, -ch1 - ch2 + ch4);
	vexMotorSet(motBackLeft,   -ch1 - ch2 - ch4);
	vexMotorSet(motFrontLeft,   ch1 - ch2 - ch4);
}

```

Groups of code that logically go together should be grouped, with a blank line
in between:
```c
static void main()
{
	printf("Hello, World!\n");
	printf("This is a test.\n");
	printf("I'm still testing.\n");

	// Declare variables
	char[] st = char[100];

	printf("Now I want some input:\n");
	gets(st);
}
```

Naming
------
Names of variables, functions, and macros should all be logical and easy to
interpret. In addition, they should all comply with the following conventions:

* Variables should always be named in `headlessCamelCase`.
* Functions should always be named in `headlessCamelCase`.
* Macros and other preprocessor definitions should always be in
  `SCREAMING_SNAKE_CASE`
