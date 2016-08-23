int shipX = 100;
int shipY = 40;
int shipWidth = 40;
int shipHeight = 20;

void setup()
{
 
   size(500,500);
   background(0);
   frameRate(3);
  
}
void draw()
{
  stars();
  //moon();
  deathStar();
  spaceship();

}

void moon(){
	ellipse(60,100,50,50); 
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
	fill(255,215,0);
	noStroke();
	rect(shipX, shipY, shipWidth, shipHeight);
	triangle(shipX + shipWidth, shipY, shipX + shipWidth + shipHeight, shipY + shipHeight/2, shipX + shipWidth, shipY + shipHeight);
}

void stars(){

	//randomly makes stars appear in the sky
	fill(255,250,205);
	stroke(255,255,205);
	ellipse((int)(Math.random()*500), (int)(Math.random()*500), 2,2);

}