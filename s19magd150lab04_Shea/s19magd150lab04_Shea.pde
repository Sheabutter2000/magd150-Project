boolean wave = false;
boolean ball = false;
void setup(){
  size(500,500);
  frameRate(1);
}
void draw(){
  noStroke();
  strokeWeight(1);
  fill(250,243,38);
  rect(0, 0 , 300, 500);
  fill(0,0,200);
  if(wave == false){
    triangle(300,0,250,50,200,100);
    triangle(300,100,250,150,200,200);
    triangle(300,200,250,250,200,300);
    triangle(300,300,250,350,200,400);
    triangle(300,400,250,450,200,500);
    rect(300,0,200,500);
    wave = true;
  }
  else{
    triangle(200,0,150,50,200,100);
    triangle(200,100,150,150,200,200);
    triangle(200,200,150,250,200,300);
    triangle(200,300,150,350,200,400);
    triangle(200,400,150,450,200,500);
    rect(200,0,500,500);
    wave = false;
  }
  if(ball == false){
    fill(247,166,43);
    ellipse(400,190,100,100);
    noFill();
    stroke(250);
    strokeWeight(2);
    arc(400,190, 50,50, 0, HALF_PI);
    ball = true;
  }
  else{
    fill(247,166,43);
    ellipse(400,190,50,50);
    noFill();
    stroke(250);
    strokeWeight(2);
    arc(400,190, 25, 25, 0, HALF_PI);
    ball = false;
  }
  if(mousePressed){
      fill(234,43,247);
      rect(25,25,100,200);
    }
    else{
      fill(43,241,247);
      rect(25,25,100,200);
    }
  for(int z=1; z <= 5; z++){
    int randX = round(random(width));
    int randY = round(random(height));
    stroke(150,100);
    noFill();
    arc(randX+25, randY, 50,50, 0,PI);
    arc(randX-25, randY, 50,50, 0, PI);
    }
  fill(0,0,200);
}
void mouseClicked(){
  fill(150);
  strokeWeight(0);
  stroke(1);
  bezier(377,286,394,363,470,318,390,384);

}
void keyPressed(){
  fill(200,0,0);
  stroke(1);
  strokeWeight(0);
  line(70,400,100,430);
  line(70,400,40,430);
  line(70,400,120,430);
  line(70,400,20,430);
  ellipse(70, 400, 70,50);
  ellipse(110,390,40,20);
  ellipse(20,390,40,20);
  fill(0);
  ellipse(80,390,10,10);
  ellipse(60,390,10,10);
}
