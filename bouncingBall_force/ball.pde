class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  
  float radius,m;
 

  Ball (float x, float y, float r){
  pos = new PVector(x,y);
  vel = new PVector(0,0);
  acc = new PVector(0,0);
  radius = r;
  
  //m = radius*.1;
}

boolean distance(Ball other){
  return(this.pos.dist(other.pos) < this.radius + other.radius);
   
}
   
  

  void collision(Ball other){
    float d = dist(pos.x,pos.y,other.pos.x,other.pos.y);
    float minDistance = this.radius + other.radius;
    float vFinalx, vFinaly;
    
    
    vFinalx = this.vel.x;
    vFinaly = this.vel.y;
    this.vel.x = other.vel.x;
    this.vel.y = other.vel.y;
    other.vel.x = vFinalx;
    other.vel.y = vFinaly;
    //vFinalx = vel.x *((m - other.m)/m + other.m) + other.vel.x * (sq(other.m)/m + other.m);
    //vFinalox = vel.x *(sq(m)/m + other.m) - other.vel.x * ((m - other.m)/m + other.m);
    
   if (d < minDistance){
      // vel.x = vel.x + acc.x;
       //vel.y = vel.y + acc.y;
       //pos.x = pos.x + vel.x;
       //pos.y = pos.y + vel.y;
       vel.add(acc);
       pos.add(vel);
       
   }
  }
    
    void applyForce(PVector force){
    this.acc=force;
    }
   
    void collisionCheck(){
      if(pos.x > width - radius){
        vel.x *= -1;
      }else if (pos.x < radius){
        vel.x *= -1;
      }else if (pos.y > height -radius){
        vel.y *= -1;
      }else if (pos.y <radius){
        vel.y *= -1;
      }
  }

  void display(){
      fill(30);
      ellipse(pos.x,pos.y,radius*2,radius*2);
     
    }
}
  