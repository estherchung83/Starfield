Particle[] particles;
void setup()
{
  size(500,500);
  particles =  new Particle [1000];
  for(int i = 0;i < particles.length; i++)
  {
    particles[i] = new NormalParticle();
  }
  particles[1] = new JumboParticle();
  particles[0] = new OddballParticle();
  
  
 
}
void draw()
{
  
  background(0);
  for(int i = 0; i <particles.length; i++)
  {
  particles[i].move();
  particles[i].show();
  }
 
}
class NormalParticle implements Particle 
{
  int c1;
  double x1,y1,s1,a1;
  NormalParticle()
  {
    x1 = 250;
    y1 = 250;
    a1 = (Math.PI*10*Math.random());
    s1 = (Math.random()*5);
    c1=(int)(Math.random()*256);
  }
  
  public void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
    a1 += .03;
    s1 += .01;
  }

  public void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,20,20);
    if (x1>500||x1<0)
    {
       x1 = cos((float)a1)*s1 + 250;
       a1=0;
       s1=0;
    }
    if(y1<0||y1>500)
    {
      y1 = sin((float)a1)*s1 + 250;
      a1=0;
       s1=0;
    }
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int x1,y1,c1;
  OddballParticle()
  {
    x1 = 50;
    y1 = 50;
    c1 = (int)(Math.random()*256);
  }
  void move()
  {
    x1 = x1 + (int)(Math.random()*50)-25;
    y1 = y1 + (int)(Math.random()*50)-25;  
  }
  void show()
  {
    noStroke();
    fill(c1,200,100);
    ellipse((float)x1,(float)y1,60,60);
    if (x1<0||x1>500)
    {
      x1 = 10;
    }
    if(y1<0||y1>500)
    {
      y1 = 10;
    }
  }
  
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,80,80);
    if (x1>500||x1<0)
    {
       x1 = cos((float)a1)*s1 + 250;
       a1=0;
       s1=0;
    }
    if(y1<0||y1>500)
    {
      y1 = sin((float)a1)*s1 + 250;
      a1=0;
       s1=0;
    }
  }
}
