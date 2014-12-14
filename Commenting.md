Commenting
==========
By Ethan Ruffing

You should have **DETAILED** comments <font size="5">***EVERYWHERE!!!***</font>

This:
```c
void
moveFunc(int ch1, int ch2, int ch4)
{
	vexMotorSet(motBackRight,   ch1 - ch2 + ch4);
	vexMotorSet(motFrontRight, -ch1 - ch2 + ch4);
	vexMotorSet(motBackLeft,   -ch1 - ch2 - ch4);
	vexMotorSet(motFrontLeft,   ch1 - ch2 - ch4);
}
void
setDriveMotors(int speed)
{
	vexMotorSet(motBackRight,speed);
	vexMotorSet(motFrontRight,speed);
	vexMotorSet(motBackLeft,speed);
	vexMotorSet(motFrontLeft,speed);
}
void  extenderControl(int btn5U,int btn5D){
	vexMotorSet(motExtender, 96 * (btn5U - btn5D));
}
```
IS APPALLING!

Introduction to Docblock Commenting
-----------------------------------
Docblock comments are a system used to create API documentation for functions
that you write.

Before each function, a "docblock" is inserted to describe its purpose and the
way that it can be called and used by other functions. These blocks can be
parsed by documentation generators, such as
[Doxygen](http://www.stack.nl/~dimitri/doxygen/), to create nicely-formatted
documentation of an entire program.

Each docblock should begin with a full description, using *complete sentences*.
Grammatical style should follow Strunk & White's *The Elements of Style*.

Descriptions of parameters and returned values need not be full sentences.

See more in the style guide.

Example:
```c
/**
 * This function moves the robot according to joystick input.
 *
 * @author Ethan Ruffing <ruffinge@gmail.com>
 * @since 2014-09-07
 *
 * @param[in] ch1
 *     The Vex remote joystick channel corresponding to x-axis motion
 * @param[in] ch2
 *     The Vex remote joystick channel corresponding to y-axis motion
 * @param[in] ch4
 *     The Vex remote joystick channel corresponding to z-axis rotation
 */
void moveFunc(int ch1, int ch2, int ch4)
{
	vexMotorSet(motBackRight,   ch1 - ch2 + ch4);
	vexMotorSet(motFrontRight, -ch1 - ch2 + ch4);
	vexMotorSet(motBackLeft,   -ch1 - ch2 - ch4);
	vexMotorSet(motFrontLeft,   ch1 - ch2 - ch4);
}

/**
 * This function sets all drive motors to a specified speed.
 *
 * @author Ethan Ruffing <ruffinge@gmail.com>
 * @since 2014-09-07
 *
 * @param[in] speed
 *     The speed to apply to the drive motors
 */
void setDriveMotors(int speed)
{
	vexMotorSet(motBackRight, speed);
	vexMotorSet(motFrontRight, speed);
	vexMotorSet(motBackLeft, speed);
	vexMotorSet(motFrontLeft, speed);
}

/**
 * This function will calculate the square of a decimal number.
 *
 * @author Ethan Ruffing
 * @since 2014-12-14
 *
 * @param[in] a
 *     The number to square
 * @return
 *     The square of the specified number
 */
double square(double a)
{
	// Declare variables
	double b;

	// Calculate square of input value
	b = a * a;

	// Return calculated value
	return b;
}
```
Notice also the comments within each function in the example above. These are
essential for keeping your program understandable to others.
