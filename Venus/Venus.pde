
int[][][] padd;
PImage  img;    
int sx; 
int sy;

void  setup(){
  
size(570,375);
frameRate(10);
stroke(255);


sx = width;
sy = height;

  
  
  
  img = loadImage("AFROCY.jpg");
  img.loadPixels();
  
    padd  = new int[sx][sy][2]; 
   /*

      for(int i =0; i <8000; i++){
        padd[(int)random(sx)][(int)random(sy)][1] = 1;
      }
  */
  
  for(int x = 0; x < img.width; x++){
   for(int y = 0; y < img.height; y++){ 
      int index = x + y*img.width; 
       color c = img.pixels[index];
       float b = brightness(c);
       if(b > 200 && b < 250 ){
       padd[x][y][1] = 1;
       }
       
       
       /*
        if(b > 230 && b < 235 ){
       padd[x][y][1] = 1;
       }
       
        if(b > 260 && b < 265 ){
       padd[x][y][1] = 1;
       }
       
        if(b > 280  ){
       padd[x][y][1] = 1;
       }
  */
 
    }
  }
  
    
  
  
  
}

void draw(){
   
    background(0);
  
    for(int x = 0; x <sx; x++){
        for(int y =0 ;y < sy; y++){
           if(padd[x][y][1] == 1){
             point(x,y);
             //println("here"); 
           }    
    }
   }
   
   Update();
   saveFrame("/home/savvas/sketchbook/sketch_180708a/frames/gol_######.png"); 
   println(frameRate);
}


void Update(){
  
  
  
   for(int x = 0; x < sx;  x++){
    for(int y = 0; y <sy; y++){
      padd[x][y][0] = padd[x][y][1];  
    }
   }
  
  
  for(int x = 1; x < sx-1;  x++){
    for(int y = 1; y <sy-1; y++){
     int summ = padd[x-1][y][0] + padd[x+1][y][0] + padd[x][y-1][0] + padd[x][y+1][0]+ padd[x+1][y+1][0]+ padd[x+1][y-1][0] +padd[x-1][y+1][0] + padd[x-1][y-1][0];
      
     // println(summ);
      
      if((int)random(100) < 1 * (frameCount )/4. ){
         if(summ > 2) padd[x][y][1] = 1; 
         if(summ <=2 ) padd[x][y][1] = 0; 
         if(summ > 4 ) padd[x][y][1] = 0; 
        }
      }
  }

  println("Updated");
  
  //return padd;
}
