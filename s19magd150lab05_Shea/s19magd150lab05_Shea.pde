String house = "House Hunters";
String space = "Outer Space";
String boop;
int diameter = 200;
boolean circality = false;
void setup(){
  size(1000,1000);
}

void draw(){
  fill(131,98,7);
  rect(150,200,700,500);
  line(300,200, 200, 100);
  line(700,200, 800, 100);
  fill(150);
  rect(150,550,700,175);
  fill(0);
  rect(200,250,600,275);
  ellipse(300,625, 100, 100);
  rect(650,575,100,100);
  text(house, 660, 700);
  text(space, 260, 700);
  inCircle(300, 625, diameter);
  if(mousePressed){
    if(mouseX >= 650 && mouseX <= 750 && mouseY >=575 && mouseY <= 675){
      fill(23,245,215);
      rect(200,250,600,275);
      fill(230,245,23);
      ellipse(700,300, 50,50);
      fill(81,53,10);
      rect(300,425, 50,100);
      triangle(500,375,650,375,575,300);
      fill(34,243,27);
      ellipse(325,425,100,100);
      fill(243,27,63);
      rect(500,375,150,150);
      fill(81,53,10);
      rect(575,450,25,75);
    }
    else if(circality == true){
      fill(255,249,37);
      ellipse(400,400,100,100);
      fill(0,0,200);
      ellipse(600,450,50,50);
      fill(255,121,18);
      ellipse(700,275,25,25);
      
    }
  }
}
void inCircle(int x, int y, int diameter){ //Borrowed from ButtonExample2
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2){
    circality = true;;
  } else{
    circality = false;
  }
}
  
