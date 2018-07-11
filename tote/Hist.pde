void DrawHist(){
  
 
  
  int nbins = 2*(int(sqrt(2)*maxvel));
  
  int [] hist = new int[nbins];
  
 for(Point p : points){
   
  int vel = int( sqrt( p.modx*p.modx + p.mody*p.mody )) ; 
  
      
  hist[vel]++;   
     
 // println( vel);   
     
     
 }
  
  //Draw hist axis
  line(width/2 + 0.1*width, height - 0.2*height, width - 0.01*width, height - 0.2*height );
  line(width/2 + 0.1*width, height - 0.2*height, width/2 + 0.1*width, height - 0.9*height );
  
  
  int binw = int((width/2 - 0.11*width)/nbins); 
  int totheight = int(0.7*height);
  
  //Now Draw hist entries 
  int Ntot = points.size(); 
    if(Ntot == 0) Ntot = 1; 
  
   for(int i = 0; i< nbins; i++){ 
  
     int yval = int( height*0.8 - (hist[i]*totheight/Ntot));
     int xval = int(binw*i + width/2 + 0.1*width);
    
     line(xval,yval,xval+binw,yval);
     
   }
  
}
