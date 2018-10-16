NormalParticle [] bob;
N2 [] tom;
Particle[] particles;
void setup()
{
  size(500,500);
  bob =  new NormalParticle [10000];
  for(int i = 0;i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  tom =  new N2 [10000];
  for(int i = 0;i < tom.length; i++)
  {
    tom[i] = new N2();
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
  for(int i = 0; i <tom.length; i++)
  {
  tom[i].move();
  tom[i].show();
  }
}
class NormalParticle implements Particle 
{
  int c1,a1;
  double x1,y1,s1;
  NormalParticle()
  {
    x1 = 150;
    y1 = 150;
    a1 = (int)(Math.PI*10*Math.random());
    s1 = (Math.random()*11);
    c1=(int)(Math.random()*256);
  }
  
  public void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
  }

  public void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,10,10);
  }
}
class NormalParticle2 implements Particle
{
  int c1,a1;
  double x1,y1,s1;
  NormalParticle2()
  {
    x1 = 350;
    y1 = 150;
    a1 = (int)(Math.PI*10*Math.random());
    s1 = (Math.random()*11);
    c1=(int)(Math.random()*256);
  }
  
   public void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
  }

   public void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,10,10);
  }
}
interface Particle
{
  public void show();
  public void move();
}
//class OddballParticle implements Particle
{
  //your code here
}
class JumboParticle extends NormalParticle
{
  int c1,a1;
  double x1,y1,s1;
  JumboParticle()
  {
    x1 = 150;
    y1 = 150;
    a1 = (int)(Math.PI*10*Math.random());
    s1 = (Math.random()*11);
    c1=(int)(Math.random()*256);
  }
  
  public void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
  }

  public void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,100,100);
  }
}


class N2 
{
  int c1,a1;
  double x1,y1,s1;
  N2()
  {
    x1 = 350;
    y1 = 150;
    a1 = (int)(Math.PI*10*Math.random());
    s1 = (Math.random()*11);
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

