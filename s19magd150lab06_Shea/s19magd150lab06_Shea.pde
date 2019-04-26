Tree hillTree;

void setup(){
  size(500,500);
  hillTree = new Tree();
}
void draw(){
  background(100);
  noStroke();
  fill(22,124,5);
  ellipse(250,500,500,200); //This make the land at the bottom of the screen
  float x = round(random(1,10)); //This makes a random value for x that determines 
  if (x == 10){                  // whether or not the Lightning function goes off
    Lightning();
  }
  hillTree.Trunk();
  hillTree.Leaf();
  fill(150);
  ellipse(250,0,400,300);
  ellipse(150,0,400,300); //These make the large, gray cloud behind the controlled raincloud
  ellipse(350,0,400,300);
  raincloud(); //This creates a raincloud that follows the mouse but has its y value confined
  rain(); //This makes all the rain droplets that follow the raincloud
}


void raincloud(){
  fill(50);
  ellipse(mouseX, 100, 100, 100);
  ellipse(mouseX + 50, 100, 100, 100);
  ellipse(mouseX - 50, 100, 100, 100);
}
void rain(){
  fill(13,94,255);
  noStroke();
  ellipse(random(mouseX-50,mouseX+50), random(150,500), 10, 20);
}
void Lightning(){
  fill(255,239,0);
  float x = random(0,500);
  beginShape();
    vertex(x, 100);
    vertex(x, 150);
    vertex(x - 20, 200);
    vertex(x, 250);
    vertex(x - 20, 300);
    vertex(x, 350);
    vertex(x - 20, 400);
    vertex(x, 450);
    vertex(x, 400);
    vertex(x + 20, 350);
    vertex(x, 300);
    vertex(x + 20, 250);
    vertex(x, 200);
    vertex(x + 20, 150);
    vertex(x, 100);
    endShape();
}
