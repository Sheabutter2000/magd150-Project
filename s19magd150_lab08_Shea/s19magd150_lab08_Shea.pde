String[] headline;
String bottomline = "There is a chinese kid that can do it better";
PFont apple; // These variables
PFont trat;  // Are for font creation
int r;
int g; // These variables are used to generate random colors
int b;
import processing.pdf.*;

void setup(){
  size(1000, 1000);
  background(47, 87, 247);
  apple = createFont("Apple-Chancery", 32);
  trat = createFont("Trattatello", 32);
  headline = loadStrings("text.txt");
  beginRecord(PDF, "saver.pdf");
}

void draw(){
  noStroke();
  fill(247, 196, 27);
  ellipse(500, 500, 400, 400);
  fill(12,201,12);
  rect(0, 500, 1000, 500);
  textSize(50);
  textFont(apple, 32);
  keyPressed(); // This is the function that gives the text random colors when a button is pressed
  fill(r,g,b);
  textAlign(CENTER); // This makes it so all text is centered
  printstring();
  textFont(trat, 32);
  text(bottomline, 400, 200, 500, 300);
}

void keyPressed() { //This is the functio to make random colors for the text
  if (keyPressed == true){
    r = round(random(0,250));
    g = round(random(0,250));
    b = round(random(0,250));
  }
  else{
    r = 0;
    g = 0;
    b = 0;
  }
    
}

void printstring(){
  for (int i = 0; i < headline.length; i++){
    text(headline[i], 100, 50 ,450,200);
  }
}

void mousePressed(){
  if (mousePressed == true){
    endRecord();
    exit();
  }
}
