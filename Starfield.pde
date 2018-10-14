NormalParticle [] bob;

void setup()
{
  size(500,500);
  bob =  new NormalParticle [1000];
  for(int i = 0;i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i <bob.length; i++)
  {
  bob[i].move();
  bob[i].show();
  }
}
class NormalParticle
{
  int c1,s1;
  double x1,y1,a1;
  NormalParticle()
  {
    x1 = 250;
    y1 = 250;
    a1 = Math.PI*2*Math.random();
    s1 = (int)(Math.random()*11);
    c1=(int)(Math.random()*256);
  }
  
  void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
  }

  void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,10,10);
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
