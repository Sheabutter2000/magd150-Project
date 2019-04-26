PVector c1, c2, c3;

void setup(){
  size(800,800);
  c1 = new PVector(400,400);
  c2 = new PVector(200, 200);
  c3 = new PVector(400,400);
  background(50,200,123);
}

void draw(){
  fill(250,0,0);
  ellipse(c3.x, c3.y, 400,400);
  fill(250);
  rectMode(CENTER);
  rotate(6); // this rotates the new square
  makeSquare();
  scale(0.75); //This shrinks the new square
  makeSquare();
  translate(100,150); //This moves the new square 100 x units and 150 y units)
  makeSquare();
  
}

void makeSquare(){ //this makes the squaresthat are to be manipulated
  rect(c2.x, c2.y, 250,250);
}
