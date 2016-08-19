void setup()
{
  background(0);
  size(500,500);
}
void draw()
{
  moon();
  jupiter();
}

void moon(){
	ellipse(60,100,50,50); 
}

void jupiter()
{
	ellipse(300,300,150,150); 

	fill(255,69,0);
	ellipse(270,320,40,30); //red spot
}


void stars(){
	//fill(255)
	//some nway to have a random array of points
}

