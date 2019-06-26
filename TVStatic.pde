ArrayList<Sparkle> sparkle;

void setup() {
  size(600,600);
  background(0);  
  sparkle = new ArrayList<Sparkle>();
  
  for (int i = 0; i < 100; i++) {
    sparkle.add(new Sparkle(0,width,0,height,random(200,255),random(200,255),random(200,255),5,10));
}
 
}
void draw() {
  sparkle.add(new Sparkle(0,width,0,height,random(200,255),random(200,255),random(200,255),5,10));
  
  for (int i = 0; i < sparkle.size(); i++) {
   Sparkle s = sparkle.get(i);
   s.staticDots();
//    if(s.die()) {
//      sparkle.remove(i);
//    }
  }
}
