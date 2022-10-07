

float x,y,cr,cg,cb;
float r = 0;
float speedX,speedY;

void setup() {
 size(800,800);
 background(0);
  
 x = random(width);
 y = random(height);
  
 speedX = random(2,5);
 speedY = random(2,5);
 
 cr = random(100,255);
 cg = random(100,255);
 cb = random(100,255);

}

void draw() {
 
 if(x >= width || x <= 0) {
  speedX = -speedX;
   cr = random(100,255);
   cg = random(100,255);
   cb = random(100,255);

 }
 if(y >= height || y <= 0) {
  speedY = -speedY;
  cr = random(100,255);
  cg = random(100,255);
  cb = random(100,255);

 }
 x = x +speedX;
 y = y +speedY;
 fill(cr,cg,cb,50);
 
 translate(x,y);
 rotate(r);
 pattern();
 r+=0.05;
 //saveFrame("frames/####.tga");
}

void pattern() {
  beginShape();
  vertex(0, 100);
  vertex(10, 0);
  vertex(100, 10);
  vertex(90, 100);

  vertex(1, 90);
  vertex(20, 1);
  vertex(99, 20);
  vertex(80, 99);

  vertex(2, 80);
  vertex(30, 2);
  vertex(98, 30);
  vertex(70, 98);

  vertex(3, 70);
  vertex(40, 3);
  vertex(97, 40);
  vertex(60, 97);

  vertex(8, 60);
  vertex(50, 8);
  vertex(93, 50);
  vertex(50, 93);

  vertex(13, 50);
  vertex(60, 15);
  vertex(85, 60);
  vertex(40, 85);

  vertex(23, 40);
  vertex(70, 27);
  vertex(76, 65);
  vertex(33, 73);

  vertex(34, 39);
  vertex(73, 36);
  vertex(64, 67);
  vertex(34, 60);
  vertex(44, 38);
  vertex(70, 49);
  vertex(49, 62);
  vertex(45, 40);
  endShape();
}
