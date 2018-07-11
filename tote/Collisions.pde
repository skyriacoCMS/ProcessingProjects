
 void Collisions(){
   
   //simplified Collision Momentum/Energy sharing
   
     ArrayList<Point> checked;  
     checked = new ArrayList<Point>();
    for(Point p : points ){
      
     boolean chnot = false; 
     for(Point ck : checked){
      if( ck == p) chnot = true; 
     
     }
     
    if(chnot) continue; 
      
      
     for(Point op : points){
     if(p  == op) continue; 
     
     float dist = sqrt((p.cx - op.cx)*(p.cx - op.cx) + (p.cy - op.cy)*(p.cy - op.cy));   
     if(dist  < 2*p.dim + 3){
       
         checked.add(op);
       
         float v1x = p.modx; 
         float v1y = p.mody; 
         
         float v2x = op.modx; 
         float v2y = op.mody; 
                  
         float perc = (float)random(0.2,1);

         float Magx = sqrt(v1x*v1x + v2x*v2x);
         float Magy = sqrt(v1y*v1y + v2y*v2y);
         
         float newVx =(perc*(Magx));
         float newV2x =((1.0 - perc)*(Magx));
         
          
         perc = (float)random(0.2,1);
         
         float newVy =(perc*(Magy));
         float newV2y =(1 - perc)*(Magy);
                 
         /*
         p.modx = int(sign(v1x)*newVx); 
         p.mody = int(sign(v1y)*newVy);
         
         op.modx = int(sign(v2x)*newV2x); 
         op.mody = int(sign(v2y)*newV2y);
         */
      
       

         float nv = (-p.modx*1./abs(p.modx)*newVx ) ; 
         if(nv < 1 ) nv =1; 
         p.modx = nv; 
         
         nv = ( -p.mody*1./abs(p.mody)*newVy );
         if(nv < 1 ) nv =1; 
         p.mody =  nv;
         
         nv = (-op.modx*1./abs(op.modx)*newV2x ) ; 
         if(nv < 1 ) nv =1; 
         op.modx =  nv;
         
         nv = ( -op.mody*1./abs(op.mody)*newV2y ); 
         if(nv < 1 ) nv =1; 
         op.mody = nv;
             
      
          
        
        break;
     }
    }
    }
   
   
   
   
   
   
 }
 
 
 int sign(int k){
   if(k == 0) return +1; 
   if(k >> 31 != 0) return -1; 
   return +1;
 }
