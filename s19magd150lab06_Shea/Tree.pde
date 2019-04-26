class Tree{
  float trunkX, trunkY, trunkW, trunkL, leafX, leafY, leafW, leafL;
  
  Tree(){
    trunkX = round(random(30,470));
    trunkY = 480;
    trunkW = round(random(10,30));
    trunkL = round(random(50,100));
    leafX = trunkX + random(-10, 10);
    leafY = trunkY - 20;
    leafW = round(random(40,70));
    leafL = leafW;
  }
    
  void Trunk(){
    fill(142,108,13);
    rect(trunkX,trunkY,trunkW,trunkL);
  }
  void Leaf(){
    fill(12,174,7);
    ellipse(leafX, leafY, leafW, leafL);
  }
}
    
