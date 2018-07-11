

class Point {
  
  int s1 = (-1)^((int) random(1,2));
  int s2 = (-1)^((int) random(1,2));

  float modx = (float)random(maxvel)*s1; 
  float mody = (float)random(maxvel)*s2;
  
  
  int dim ; 
  float cx,cy; 
  
 
 
 Point(int x,int y, int d) {
   dim = d; 
   cx = x; 
   cy = y; 
   
   
   if(d %2 == 0){
     println("Dim needs to be odd");
   }
 }
 
 void checkWalls(){
     if( cy > height - 5){
      mody = -mody; 
      cy = height - 5;
     }
     if(cy  < 5){
       mody = -mody;
      cy = 6;  
      // modx = int(modx/(sqrt(modx*modx)))*(int) random (0,maxvel);
    }
  
    if( cx  > width/2 - 5){ 
      modx = -modx; 
      cx = width/2 -6;
    }
    if(cx < 5 ){
      modx = -modx; 
      cx = 6;
     
    } 
   
 }


 
 void update(){
   
     
     stroke(255); 
      
    
    checkWalls();
   // Collisions();
   
     cx = cx + modx;
     cy = cy + mody; 
    ellipse(cx,cy,dim,dim);

   
    
          
  
  
 }
 
 
 
 
 
}
 
   
