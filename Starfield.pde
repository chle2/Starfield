//your code here
Particle [] stars = new Particle [100];
void setup()
{
  //your code here
  size (300, 300); 
  background (0); 
  for(int i=0;i<stars.length;i++){
    stars[i]=new Particle();
    stars[0]= new OddballParticle();
  }
  
}
void draw()
{
  //your code here
  for(int i=0;i<stars.length;i++){
    stars[i].show();
    stars[i].move(); 
}
class Particle
{
  //your code here
  int myX, myY, myColor, mySize; 
  double mySpeed, myAngle; 
  Starling ()
  {
  myX = (int)(Math.random()*300); 
  myY = (int)(Math.random()*300); 
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  mySpeed = (Math.random()*4);
  myAngle = (Math.random()*2)*Math.PI;
  mySize = 30; 
  }
  void move()
  {
  myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
  fill(myColor); 
  ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}

class OddballParticle //inherits from Particle
{ 
  //your code here
  Particle()
  {
  myX = (int)(Math.random()*300); 
  myY = (int)(Math.random()*300);
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  mySpeed = (Math.random()*4)+1;
  myAngle = (Math.random()*Math.PI*2);
  mySize = (int)(Math.random()*50);
  }
  void show()
  {
  fill(myColor); 
  ellipse((float)myX,(float)myY,mySize,mySize);
  }
}
}
