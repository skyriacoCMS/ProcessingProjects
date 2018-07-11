
ArrayList <Point> points; 
int maxvel = 20;

void setup(){
  
  size(800,400); 
    
  frameRate(60);
  points = new ArrayList<Point>();
  for(int i = 0; i < 0; i++){
  points.add(new Point(50,50,5));
  }
  
  
}


void draw(){
  
  
    background(0);
 
    for(Point p : points){
        p.update(); 
     }
    
    Collisions();
    DrawHist();
    stroke(256);
    text(points.size(),width -30, 30 ); 
    // println(points.size());
  
}


void mousePressed(){
  
  
    if(mouseX < width/2 ){
       points.add(new Point(mouseX,mouseY,3));  
    }
  
}


  
  
  
