//your code here
Particle[] star = new Particle[50];
OddballParticle []blob = new OddballParticle[1];
void setup()
{
	//your code here
	size(800, 800);
	background(0, 0, 0);
	for(int i = 0; i < star.length; i++){
		star[i] = new Particle();
	}
	for(int p = 0; p < blob.length; p++){
		blob[p] = new OddballParticle();
	}
}
void draw()
{
	background(0, 0, 0);
	for(int i = 0; i < star.length; i++){
		star[i].show();
	}
	for(int p = 0; p < blob.length; p++){
		blob[p].move();
		blob[p].show();
	}
}

void mousePressed(){
	background(0, 0, 0);
	for(int i = 0; i < star.length; i++){
		star[i].miX = 400;
		star[i].miY = 400;
	}
}
class Particle
{
	double velocidad, miX, miY, angulo;
	Particle(){
		angulo = (double)(Math.random() * 360) + 1 * (Math.PI/180);
		velocidad = (double)(Math.random() * 10) + 4;
		miX = 400;
		miY = 400;
	}

	void show(){
		ellipse(miX, miY, 30, 30);
	}
}

class OddballParticle //inherits from Particle
{
	int myX, myY;
	OddballParticle(){
		myX = 400;
		myY = 700;
	}
	void move(){
		myX = myX + (int)(Math.random() * 5) - 2;
	}
	void show(){
		fill(255, 255, 255);
		ellipse(myX, myY, 100, 100);
    	ellipse(myX + 20, myY - 20, 20, 20); 
    	ellipse(myX - 20, myY - 10, 10, 10);
	}
}


