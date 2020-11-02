//your code here
Particle stars [];
void setup()
{
  //your code here
  size (300, 300); 
  background (0); 
  stars =new Particle[100];
  for(int i=0;i<stars.length;i++){
    stars[i]=new Particle();
  }
  stars[0]= new OddballParticle();
  
}
void draw()
{
  //your code here
  for(int i=0;i<stars.length;i++){
    stars[i].move();
    stars[i].show();
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
  myColor = (int)(Math.random()*225);
  mySpeed = 5.6;
  myAngle = 2.05;
  mySize = 30; 
  }
  void move()
  {
  myAngle = myAngle + 0.5; 
  mySpeed = mySpeed + 0.5;
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
  myColor = (int)(Math.random()*225);
  mySpeed = 5.6;
  myAngle = 2.05;
  mySize = (int)(Math.random()*50);
  }
  void show()
  {
  fill(myColor); 
  ellipse((float)myX,(float)myY,mySize,mySize);
  }
}
}
