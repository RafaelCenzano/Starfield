//your code here
Particle[] star = new Particle[1000];
void setup()
{
  //your code here
  size(900, 900);
  background(0, 0, 0);
  for (int i = 0; i < star.length; i++) {
    star[i] = new Particle();
    star[0] = new OddballParticle();
  }
}
void draw()
{
  background(0, 0, 0);
  for (int i = 0; i < star.length; i++) {
    star[i].show();
    star[i].move();
  }
}

class Particle
{
  double velocidad, miX, miY, angulo;
  int miColor;
  Particle() {
    angulo = (double)(Math.random() * 360) + 1 * (Math.PI/180);
    velocidad = (double)(Math.random() * 25) + 2;
    miX = 400;
    miY = 400;
    miColor = color((int)(Math.random() * 255) + 90, (int)(Math.random() * 255) + 90, (int)(Math.random() * 255) + 90);
  }

  void show() {
    fill(miColor);
    ellipse((float)miX, (float)miY, 10, 10);
  }
  void move() {
    miX += velocidad * Math.cos(angulo);
    miY += velocidad * Math.sin(angulo);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    miX = 400;
    miY = 400;
  }  
  void move() {
    miX = miX + (int)(Math.random() * 5) - 2;
  }
  void show() {
    fill(miColor);
    ellipse((float)miX, (float)miY, 100, 100);
    fill(255, 255, 255);
    ellipse((float)miX + 20, (float)miY - 20, 20, 20); 
    ellipse((float)miX - 20, (float)miY - 10, 10, 10);
    ellipse((float)miX + 10, (float)miY + 20, 50, 10);
  }
}
