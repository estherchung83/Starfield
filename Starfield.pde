N2 [] tom;
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
  //particles[0] = new OddballParticle();
  
  //tom =  new N2 [1000];
  //for(int i = 0;i < tom.length; i++)
  {
    //tom[i] = new N2();
  }
 
}
void draw()
{
  
  background(0);
  for(int i = 0; i <particles.length; i++)
  {
  particles[i].move();
  particles[i].show();
  }
  //for(int i = 0; i <tom.length; i++)
  {
  //tom[i].move();
  //tom[i].show();
  }
}
class NormalParticle implements Particle 
{
  int c1,a1;
  double x1,y1,s1;
  NormalParticle()
  {
    x1 = 250;
    y1 = 250;
    a1 = (int)(Math.PI*10*Math.random());
    s1 = (Math.random()*5);
    c1=(int)(Math.random()*256);
  }
  
  public void move()
  {
    x1 = cos((float)a1)*s1 + x1;
    y1 = sin((float)a1)*s1 + y1;
    a1 += .03;
  }

  public void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,20,20);
  }
}
/*class NormalParticle2 implements Particle
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
*/
interface Particle
{
  public void show();
  public void move();
}
//class OddballParticle implements Particle
{
  //int x1,y1;
  //Oddbs
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    noStroke();
    fill(150,c1,c1);
    ellipse((float)x1,(float)y1,60,60);
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
