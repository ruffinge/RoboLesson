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

void armControl(int btn7D, int btn7U)
{
	if (btn7D == 1) {
		vexMotorSet(motRotateTwo,  127);
		vexMotorSet(motRotateOne, -127);
	}
	else if (btn7U == 1)  {
		vexMotorSet(motRotateTwo, -127);
		vexMotorSet(motRotateOne,  127);
	}
	else    {
		vexMotorSet(motRotateTwo, 0);
		vexMotorSet(motRotateOne, 0);
	}
}
void foreArmControl(int btn8L,int btn8U,int btn8D)
{

	if (btn8L == 1){
		vexMotorSet(motForeArm, -127);
	}
	else if (btn8U == 1){
		vexMotorSet(motForeArm,-127);
	}
	else if (btn8D == 1){
		vexMotorSet(motForeArm,63);
	}
	else {
		vexMotorSet(motForeArm,0);
	}
}
```
IS APPALLING!

Introduction to Docblock Commenting
-----------------------------------
