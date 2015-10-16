int rx;  //declares variables
int ry;
int rw;
int rh;
float cx;
float cy;
int cdiam;
float xspeed;
float yspeed;
float ryspeed;

void setup(){
    size(400,400);  //sets size
    background(0);  //sets black background
    rx = 150;  //assigns variables
    ry = 150;
    rw = 100;
    rh = 150;
    cx = 20;
    cy = 20;
    cdiam = 40;
    xspeed = 6;
    yspeed = 5;
    ryspeed = 2;
}

void draw(){
    
    //defines coordinates of circle in reference to speed
    cx += xspeed;
    cy += yspeed;
    ry += ryspeed;
        
    //refreshes background
    background(0);
    
    //creates shapes
    fill(255);
    rect(rx,ry,rw,rh);
    ellipse(cx,cy,cdiam,cdiam);
    
    //rectangle y-speed changes when it touches top or bottom
    if((ry + rh > height) || (ry < 0)){
        ryspeed *= -1;
    }
    
    //if circle intersects rectangle...
    if((cx + cdiam/2 >= rx) && (cx - cdiam/2 <= rx + rw) && (cy + cdiam/2 >= ry) && (cy - cdiam/2 <= ry + rh)){
        
        //creates a green circle
        fill(0,255,0);
        ellipse(cx,cy,cdiam,cdiam);
    }
    
    //otherwise...if circle reaches boundaries, speeds reverse
    else{
      if((cx + cdiam/2 >= 400) || (cx - cdiam/2 <= 0)) {
        xspeed *= -1;
      }
      if((cy + cdiam/2 >= 400) || (cy - cdiam/2 <= 0)){
        yspeed *= -1; 
      }
    }
}