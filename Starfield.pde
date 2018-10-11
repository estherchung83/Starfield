NormalParticle bob = new NormalParticle();
void setup()
{
  size(500,500);
  background(0);
}
void draw()
{
  bob.move();
  bob.show();
}
class NormalParticle
{
  int c;
  double x1,y1,s,a;
  NormalParticle()
  {
    x1 = 250;
    y1 = 250;
    a = 2*Math.PI;
    s = (int)(Math.random()*11);
  }
  
  void move()
  {
    x1 = Math.cos((float)a)*s + x1;
    y1 = Math.sin((float)a)*s + y1;
  }

  void show()
  {
    ellipse((float)x1,(float)y1,50,50);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

