//your code here
void setup()
{
	//your code here
	
}
void draw()
{
	//your code here
}
class Particle
{
	//your code here
	int myX, myY, myColor, mySize; 
	double mySpeed, myAngle; 
	Starling ()
	{
	myX = 150; 
	myY = 150; 
	myColor = ((int)(Math.random()*225),(int)(Math.random()*225,(int)(Math.random()*225);
	mySpeed = 5.6;
	myAngle = 2.05;
	mySize = 30; 
	}
	void show()
	{
	fill(myColor); 
	ellipse((float)myX,(float)myY,mySize,mySize);
	}
}

class OddballParticle //inherits from Particle
{ 
	//your code here
	Particle()
	{
	myX = 150; 
	myY = 150;
	myColor = ((int)(Math.random()*225),(int)(Math.random()*225,(int)(Math.random()*225);
	mySpeed = 5.6;
	myAngle = 2.05;
	mySize = (int)(Math.random()*50)
	}
	void show()
	{
	fill(myColor); 
	ellipse((float)myX,(float)myY,mySize,mySize);
	}

}


