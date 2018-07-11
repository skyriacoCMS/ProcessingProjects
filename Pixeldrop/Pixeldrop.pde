PImage input; 
ArrayList<Point> points; 


int sx; 
int sy;
    
  
void setup(){
 
  size(570,375);
  frameRate(10);
  
  
  sx = width; 
  sy = height;
  
  input = loadImage("AFROCY.jpg");
  input.loadPixels(); 
   points = new ArrayList<Point>();

  
  
}


void draw(){
  
  background(input);
 
 
  for(Point p: points){
   p.update(); 
  }
    
  save("glitchedVenus.png");  
}



void mousePressed(){
  
    int index = mouseX + mouseY*input.width;
    color c = input.pixels[index];
    
    for(int i = mouseX; i < width; i ++){
          
 
      points.add(new Point(i,mouseY+1,c));
      points.add(new Point(i,mouseY,c));
      points.add(new Point(i,mouseY-1,c));
      
    }
     
}



class Point{
  int cx; 
  int cy; 
  color z; 
  
 Point(int x, int y, color c){ 
  cx = x; 
  cy = y; 
  z  = c; 
 }
 
 void update(){
   stroke(z);
   point(cx,cy); 
 }
 
 
}
