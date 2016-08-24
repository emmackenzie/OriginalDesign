int shipX = 100;
int shipY = 40;
int shipWidth = 40;
int shipHeight = shipWidth;

void setup()
{
 
   size(500,500);
   background(0);
   frameRate(3);
  
}
void draw()
{
  stars();
  deathStar();
  spaceship();
}

void deathStar(){

	//body
	fill(205,201,201);
	noStroke();
	ellipse(300,300,150,150); 

	//seperating line
	stroke(0);
	line(225, 300, 375, 300);
	arc(300,300,150,50, 0, PI);
    
    //door
	fill(205,201,201);
	stroke(0);
	ellipse(320,270,30,30); //red spot
}

void spaceship(){
	//body
	fill(255,0,0);
	noStroke();
	ellipse(shipX, shipY, shipWidth, shipHeight);
	//triangle(shipX + shipWidth, shipY, shipX + shipWidth + shipHeight, shipY + shipHeight/2, shipX + shipWidth, shipY + shipHeight);

	//windows


	//tail
	fill(255,205,0);
	rect(shipX - shipWidth, shipY - shipY/4, shipWidth/2, shipHeight/2);
	rect(shipX + shipWidth/2, shipY - shipY/4, shipWidth/2, shipHeight/2);

}

void stars(){

	//randomly makes stars appear in the sky
	fill(255,250,205);
	stroke(255,255,205);
	ellipse((int)(Math.random()*500), (int)(Math.random()*500), 2,2);

}