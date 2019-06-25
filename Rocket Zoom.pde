// MAJOR SEIZURE WARNING!!!
void setup() {
size(800,800);
frameRate(24);
}

void draw() {
  background(0,0,0);
  stroke(random(200,255), random(200,255), random(200,255));
  strokeWeight(random(1,5));
  fill(255,255,255);
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  point(random(1,799), random(1,799));
  
  triangle(mouseX, mouseY, mouseX - 50, mouseY + 50, mouseX + 50, mouseY + 50);
  triangle(mouseX+50, mouseY+190, mouseX+50, mouseY+80, mouseX+80, mouseY+190);
  triangle(mouseX-50, mouseY+190, mouseX-50, mouseY+80, mouseX-80, mouseY+190);
  rect(mouseX-50, mouseY + 50, 100, 100);
  fill(255,128,0);
  stroke(255,255,0);
  triangle(mouseX, mouseY+150, mouseX-20, mouseY+180, mouseX+20, mouseY+180);
}

void mouseMoved() {
  background(random(100,200), random(100,200), random(100,200));
  stroke(random(200,255), random(200,255), random(200,255));
  strokeWeight(random(5,10));
  fill(random(200,255), random(200,255), random(200,255));  
  
  rect(random(0,width), random(0,height), 1, 200);
  rect(random(0,width), random(0,height), 2, 200);
  rect(random(0,width), random(0,height), 1, 200);
  rect(random(0,width), random(0,height), 2, 200);
  rect(random(0,width), random(0,height), 1, 200);
  rect(random(0,width), random(0,height), 2, 200);
  rect(random(0,width), random(0,height), 1, 200);
  rect(random(0,width), random(0,height), 2, 200);
  rect(random(0,width), random(0,height), 1, 200);
  rect(random(0,width), random(0,height), 2, 200);
  
  
  triangle(mouseX, mouseY, mouseX - 50, mouseY + 50, mouseX + 50, mouseY + 50);
  triangle(mouseX+50, mouseY+190, mouseX+50, mouseY+80, mouseX+80, mouseY+190);
  triangle(mouseX-50, mouseY+190, mouseX-50, mouseY+80, mouseX-80, mouseY+190);
  rect(mouseX-50, mouseY + 50, 100, 100);
  triangle(mouseX, mouseY+150, mouseX-20, mouseY+180, mouseX+20, mouseY+180);
}
