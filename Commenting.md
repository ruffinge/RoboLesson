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
