Ball[] balls = {new Ball(100,150,random(20,30)),
               new Ball(200,200,random(40,60))};

//float bor = 40;

void setup(){
  size(600,600);
  
}

void draw(){
  background(90);
  //fill(255);
  //rect(20,20,width-bor,height-bor);
  for (Ball ball : balls) {
     PVector gravity = new PVector(0,0.1);
    // Apply gravity
    ball.applyForce(gravity);
  }
  
  for (int i = 0; i <balls.length;i++){
    
   
    //balls[i].update();
    balls[i].collisionCheck();
    balls[i].display();
    
  }
  for(int i = 0;i < balls.length;i++){
    for(int o = 0;o<balls.length;o++){
      if (balls[i].distance(balls[o])){
        balls[i].collision(balls[o]);
      }
    }
  }
}



  
  
 
  