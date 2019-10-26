//your code here
Particle[] warpLines = new Particle[800];
void setup()
{
	size(600, 600);
	for(int i = 0; i < warpLines.length; i++){
		/*
		if(i < 50){
			warpLines[i] = new Particle(150.0, 150.0, Math.pi + 0.3);
		}else if(i < 100){
			warpLines[i] = new Particle(450.0, 450.0, 0.4);
		}else if(i < 150){
			warpLines[i] = new Particle(450.0, 150.0, (2.0 * Math.pi) - 0.4);
		}else if(i < 200){
			warpLines[i] = new Particle(150.0, 450.0, Math.pi - 0.4);
		else {
			warpLines[i] = new Particle(300.0, 300.0, (double)((int)(Math.random() * 360.0) + 1.0) * (Math.PI/180.0));
		}
		*/
		warpLines[i] = new Particle(300.0, 300.0, (double)((int)(Math.random() * 360.0) + 1.0) * (Math.PI/180.0));
	}
	strokeWeight(4);
}
void draw()
{
	background(0);
	for(int i = 0; i < warpLines.length; i++){
		warpLines[i].move();
		warpLines[i].show();
	}
}
class Particle
{
	double myX, myY, speed, angle, startY, startX;
	int lineColor;
	Particle(double startx, double startY, double startangle){
		myY = startY;
		myX = startX;
		speed = (double)(Math.random() * 12.0) + 9.0;
		angle = startangle;
		int randnum = (int)(Math.random() * 8);
		if(randnum == 0){lineColor = color(225, 225, 255);}
		if(randnum == 1){lineColor = color(100, 100, 215);}
		if(randnum == 2){lineColor = color(250, 250, 255);}
		if(randnum == 3){lineColor = color(30, 30, 70);}
		if(randnum == 4){lineColor = color(100, 100, 150);}
		if(randnum == 5){lineColor = color(200, 200, 250);}
		if(randnum == 6){lineColor = color(200, 200, 200);}
		if(randnum == 7){lineColor = color(150, 150, 255);}
	}
	void move(){
		if(myY > 600.0 || myX > 600.0 || myY < 0.0 || myX < 0.0){
			myX = myY = 300.0;
		}
		startY = myY;
		startX = myX;
		myX += Math.cos(angle) * speed;
		myY += Math.sin(angle) * speed;
	}
	void show(){
		stroke(lineColor);
		line((float)startX, (float)startY, (float)myX, (float)myY);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


