void setup()   
{    
	size(400, 400); 
	colony = new Bacteria[500];
	for (int i = 0; i < colony.length; i ++)
	{
		colony[i] = new Bacteria();
	}
}   
void draw()   
{    
	background(0);
	for (int j = 0; j < colony.length; j++)
	{
		colony[j].walk();
		colony[j].show();
	}
}  
class Bacteria    
{
	int myX, myY, distanceWalkX, distanceWalkY;
	boolean stayBlack;
	Bacteria()
	{
		walk();
		myY = 200;
		myX = 200;
		stayBlack = false;
	}  
	void walk()
	{
		myX = myX + (int)(Math.random()*5) - 2;
		if (myX >= 400 || myX <= 0){
			myX = 200;
		}
		myY = myY + (int)(Math.random()*5) - 2;
		if (myY >= 400 || myY <= 0){
			myY = 200;
		}
	}
	void show()
	{
		int redColor = 255;
		int greenColor = redColor;
		int blueColor = (int)((Math.random()*255)+1);
		if (redColor == blueColor)
		{
			stayBlack = true;
		}
		if (stayBlack == true)
		{
			blueColor = 0;
			redColor = 0;
			greenColor = 0;
		}
		noStroke();
		fill(redColor, greenColor, blueColor);
		ellipse(myX, myY, 20, 20);
	}
}
