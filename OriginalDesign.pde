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
	fill(139,137,137);
	noStroke();
	ellipse(300,300,150,150); 

	//seperating line
	stroke(0);
	line(225, 300, 375, 300);
	arc(300,300,150,50, 0, PI);
    
    //door
	fill(112,138,144);
	stroke(0);
	ellipse(320,270,30,30); //red spot
}

void spaceship(){
	//body
	fill(165,42,42);
	noStroke();
	ellipse(shipX, shipY, shipWidth, shipHeight);


	//connectors
	noStroke();
	rect(shipX - shipWidth/2 - shipHeight/4, shipY - shipY/8, shipWidth/4, shipHeight/4);
	rect(shipX + shipWidth/2, shipY - shipY/8, shipWidth/4, shipHeight/4);

	//wings
	rect(shipX - shipWidth + shipHeight/8, shipY - shipY/2, shipWidth/8, shipHeight);
	rect(shipX + shipWidth - shipHeight/4, shipY - shipY/2, shipWidth/8, shipHeight);

	//window
	fill(0,191,255);
	ellipse(shipX, shipY, shipWidth/4, shipHeight/4);
}

void stars(){

	//randomly makes stars appear in the sky
	fill(255,250,205);
	stroke(255,255,205);
	ellipse((int)(Math.random()*500), (int)(Math.random()*500), 2,2);

}