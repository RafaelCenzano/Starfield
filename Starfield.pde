//your code here
void setup()
{
	size(600, 600);
}
void draw()
{
	//your code here
}
class Particle
{
	double myX, myY, speed, angle
	Particle(){
		myY = myX = 300;
		speed = (int)(Math.random() * 8) + 1;
		angle = ((int)(Math.random() * 360) + 1) * (3.1415926/180);
	}
	void move(){
		myX = Math.cos(angle) * speed;
		myY = Math.sin(angle) * speed;
	}
	void show(){
		ellipse(myX, myY, 4, 4);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


