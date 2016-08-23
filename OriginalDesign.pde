void setup()
{
 
   size(500,500);
   background(0);
   frameRate(3);
  
}
void draw()
{
  //moon();
  //jupiter();
  stars();

}

void moon(){
	ellipse(60,100,50,50); 
}

void jupiter(){
	//ellipse(300,300,150,150); 
    //ellipse((int)(Math.random()*300),300,150,150); 
	fill(255,69,0);
	ellipse(270,320,40,30); //red spot
}


void stars(){

	//randomly makes stars appear in the sky
	fill(255,250,205);
	stroke(255,255,205);
	ellipse((int)(Math.random()*500), (int)(Math.random()*500), 2,2);

}