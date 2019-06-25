void setup() {
  size(800,600);
  background(0,0,0);
}
void draw() {
  
}
void mouseDragged() {
    fill(random(50,255), random(50,255), 0); 
    ellipse(mouseX,mouseY, 5, 5);
}
