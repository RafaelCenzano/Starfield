//your code here
Particle[] warpLines = new Particle[800];
void setup()
{
	size(600, 600);
	frameRate(30);
	for(int i = 0; i < warpLines.length; i++){
		warpLines[i] = new Particle();
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
	int lineColor, weightOfLine;
	Particle(){
		myY = myX = 300;
		speed = (double)(Math.random() * 30) + 14;
		angle = (double)((int)(Math.random() * 360) + 1) * (Math.PI/180);
		int randnum = (int)(Math.random() * 8);
		if(randnum == 0){lineColor = color(225, 225, 255);}
		if(randnum == 1){lineColor = color(100, 100, 215);}
		if(randnum == 2){lineColor = color(250, 250, 255);}
		if(randnum == 3){lineColor = color(30, 30, 70);}
		if(randnum == 4){lineColor = color(100, 100, 150);}
		if(randnum == 5){lineColor = color(200, 200, 250);}
		if(randnum == 6){lineColor = color(200, 200, 200);}
		if(randnum == 7){lineColor = color(150, 150, 255);}
		weightOfLine = 4;
	}
	void move(){
		if(myY > 600 || myX > 600 || myY < 0 || myX < 0){
			myX = myY = 300;
			angle = (double)((int)(Math.random() * 360) + 1) * (Math.PI/180);
			weightOfLine = 5;
		}else if(myY > 500 || myX > 500 || myY < 200 || myX < 200){
			weightOfLine = 8;
		}else if(myY > 450 || myX > 450 || myY < 150 || myX < 150){
			weightOfLine = 10;
		}
		startY = myY;
		startX = myX;
		myX += Math.cos(angle) * speed;
		myY += Math.sin(angle) * speed;
	}
	void show(){
		stroke(lineColor);
		strokeWeight(weightOfLine);
		line((float)startX, (float)startY, (float)myX, (float)myY);
	}
}

class OddballParticle extends Particle//inherits from Particle
{
}


