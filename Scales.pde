void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(255,0,0);

for(int y=-50; y<=450;y+=61){
  for(int x=-50; x<=450;x+=61){
 scale(x,y);
  }
}
}
void scale(int x, int y) {
 int diam = 0;
float r = 0;
noFill();
int rand = ((int)(Math.random()*90));
while(diam < 30){
  stroke(r,rand,rand);
    beginShape();
vertex(30+diam+x, diam+10+y);
vertex(50+diam+x, diam+10+y);
vertex(50+diam+x, diam+40+y);
vertex(70+diam+x, diam+40+y);
vertex(70+diam+x, diam+60+y);
vertex(30+diam+x, diam+60+y);
endShape(CLOSE);
  beginShape();
vertex(20+diam+x, 20+diam+y);
vertex(60+diam+x, 20+diam+y);
vertex(60+diam+x, 70+diam+y);
vertex(40+diam+x, 70+diam+y);
vertex(40+diam+x, 40+diam+y);
vertex(20+diam+x, 40+diam+y);
endShape(CLOSE);
diam++;
r+=255/30.0;
}
}
