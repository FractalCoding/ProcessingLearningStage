class Sparkle {
  
  float staticXmin;
  float staticXmax;
  float staticYmin;
  float staticYmax;
  
  float staticR;
  float staticG;
  float staticB;
  
  float staticWeightMin;
  float staticWeightMax;
  
  Sparkle(float tempXmin, float tempXmax, float tempYmin, float tempYmax, float tempR, float tempG, float tempB, float tempWeightMin, float tempWeightMax) {
    staticXmin = tempXmin;
    staticXmax = tempXmax;
    staticYmin = tempYmin;
    staticYmax = tempYmax;
    
    staticR = tempR;
    staticG = tempG;
    staticB = tempB;
    
    staticWeightMin = tempWeightMin;
    staticWeightMax = tempWeightMax;
  }

void staticDots() {
  strokeWeight(random(staticWeightMin,staticWeightMax));
  stroke(staticR,staticG,staticB);
  point(random(staticXmin,staticXmax),random(staticYmin,staticYmax));
}
  
//boolean stay() {
//  delay(1000);
//  return true;
//}
//boolean death = stay();

//boolean die() {
//  if (death = true) {
//    return true;
//  } 
//  else {
//    return false;
//  }
//}

}
