void setup() {
  size(1920, 1080);
  background(255, 255, 255);
}

void draw() {

  // This section draws the gradient background.  

  int ybg = 0; //Y position of background rectangle.
  int bgr = 0; // Background red.
  int bgg = 0; // Background green.
  int bgb = 255; // Background blue.
  int recth = 5; //Rectangle height.

  //This while loop draws the sky.

  while (ybg < height/2) { 
    strokeWeight(1);
    stroke(random(0, 255), 0, random(0, 255));
    fill(bgr, bgg, bgb);
    rect(0, ybg, width, recth);
    ybg = ybg + recth;
    bgr = bgr + recth*2/3;
  }

  //This section adds vertical sky static.

  strokeWeight(1);
  stroke(random(200, 255), 0, random(0, 255));
  float lines = random(0, width);
  line(lines+100, 0, lines+100, height);
  line(lines-400, 0, lines-400, height);
  line(lines+200, 0, lines+200, height);
  line(lines-300, 0, lines-300, height);
  line(lines-500, 0, lines-500, height);
  line(lines+400, 0, lines+400, height);



  bgr = 0; //Resets red channel to 0.

  //This while loop draws the ground gradient.

  while (ybg <= height) { 
    strokeWeight(1);
    stroke(0, random(0, 50), random(0, 100));
    fill(bgr, bgg+50, bgb-50);
    rect(0, ybg, width, recth);
    ybg = ybg + recth;
    bgb = bgb - recth;
    bgg = bgg - 1;
  }
  //This section draws the two mountains.

  stroke(random(90, 110), random(45, 65), random(10, 20));
  strokeWeight(5);
  fill(random(70, 90), random(25, 45), random(0, 10));
  triangle(width/7, height/2-height/6, -width/15, height/2, width/2+width/10, height/2);
  triangle(width-width/7, height/2-height/6, width+width/15, height/2, width/2-width/10, height/2);

  //This section adds arbitrary static to the image.

  stroke(random(200, 255), random(200, 255), random(200, 255));
  strokeWeight(random(1, 5));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height));
  point(random(0, width), random(0, height/3)); //Focuses more static at 
  point(random(0, width), random(0, height/3)); //the top for a more
  point(random(0, width), random(0, height/3)); //starry static effect.
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));
  point(random(0, width), random(0, height/3));

  //This part creates an overlaid RGB grid pattern to fulfill the nested loops
  //requirement of the rubric.
  //Red grid.
  int xgridr = 0; //Red grid x
  int ygridr = 0; //Red grid y
  int roffset = int(random(-2, 1)); // Jitters red grid

  while (ygridr < width) {
    while (xgridr < height) {
      strokeWeight(random(1, 2));
      stroke(random(230, 255), 0, 0, random(90, 100));
      line(0, xgridr, width, xgridr);
      xgridr = xgridr + roffset + 50;
    }
    line(ygridr, 0, ygridr, height);
    ygridr = ygridr +roffset +50;
  }
  //Green grid.
  int xgridg = 0; //Green grid x
  int ygridg = 0; //Green grid y
  int goffset = int(random(-2, 1)); // Jitters green grid

  while (ygridg < width) {
    while (xgridg < height) {
      strokeWeight(random(1, 2));
      stroke(0, random(230, 255), 0, random(90, 100));
      line(0, xgridg, width, xgridg);
      xgridg = xgridg + roffset + 60;
    }
    line(ygridg, 0, ygridg, height);
    ygridg = ygridg +goffset +60;
  }
  //Blue grid.
  int xgridb = 0; //Blue grid x
  int ygridb = 0; //Blue grid y
  int boffset = int(random(-2, 1)); // Jitters blue grid

  while (ygridb < width) {
    while (xgridb < height) {
      strokeWeight(random(1, 2));
      stroke(0, 0, random(230, 255), random(90, 100));
      line(0, xgridb, width, xgridb);
      xgridb = xgridb + boffset + 55;
    }
    line(ygridb, 0, ygridb, height);
    ygridb = ygridb +boffset +55;
  }  

  //This section adds the ground grid

  strokeWeight(5);
  stroke(0, random(200, 255), random(200, 255));

  int ulinevar = width/12; //Upper line variable.
  int blinevar = -width*2/3; //Bottom line variable.
  while (ulinevar < width) {
    line(ulinevar, height/2, blinevar, height);
    ulinevar = ulinevar + width/12;
    blinevar = blinevar + width/4;
  }

  int hlinevar = 5; //Horizontal line variable.
  int hlinepos = height/2; //Horizontal line position.
  while (hlinepos < height) {
    line(0, hlinepos+hlinevar, width, hlinepos+hlinevar);
    hlinepos = hlinepos + hlinevar;
    hlinevar = hlinevar+5;
  }

  //This section adds the ground grid glow.

  strokeWeight(random(17,20));
  stroke(0, random(200, 255), random(200, 255), random(50, 80));

  int ulinevart = width/12; //Upper line variable thick.
  int blinevart = -width*2/3; //Bottom line variable thick.
  while (ulinevart < width) {
    line(ulinevart, height/2, blinevart, height);
    ulinevart = ulinevart + width/12;
    blinevart = blinevart + width/4;
  }

  int hlinevart = 5; //Horizontal line variable thick.
  int hlinepost = height/2; //Horizontal line variable thick.
  while (hlinepost < height) {
    line(0, hlinepost+hlinevart, width, hlinepost+hlinevart);
    hlinepost = hlinepost + hlinevart;
    hlinevart = hlinevart+5;
  }

  //This section adds the horizon glow you see in synthwave art.

  strokeWeight(1);
  stroke(255, 255, 255, 1);
  fill(255, 255, 255);
  rect(0, height/2-5, width, 10);
  fill(255, 255, 255, random(90, 100));
  rect(0, height/2-15, width, 5);
  rect(0, height/2+10, width, 5);
  fill(255, 255, 255, random(70, 90));
  rect(0, height/2-25, width, 3);
  rect(0, height/2+20, width, 3);

  //This section adds the sun.

  strokeWeight(50);
  stroke(random(230, 255), random(120, 140), 0, random(0, 100));
  fill(random(230, 255), random(200, 255), 0);
  ellipse(width/2, height/2-100, width/19, width/19); 

  //This section adds the AESTHETIC text and RGB offset glows.

  textSize(100);
  textAlign(CENTER, CENTER);

  fill(random(230, 255), random(30, 55), random(30, 55), random(80, 95));
  text("AESTHETIC", width/2, height/2+260);
  fill(random(30, 55), random(230, 255), random(30, 255), random(80, 95));
  text("AESTHETIC", width/2, height/2+240);
  fill(random(30, 55), random(30, 55), random(230, 255), random(80, 95));
  text("AESTHETIC", width/2+10, height/2+250);
  fill(random(230, 255), random(30, 55), random(230, 255), random(80, 95));
  text("AESTHETIC", width/2-10, height/2+250);

  fill(random(230, 255), random(230, 255), random(230, 255));
  text("AESTHETIC", width/2, height/2+250);
}
