// Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;

void setup() {
size(500, 600);
quitButtonSetup();
drawingSurfaceX = width*0 ;
drawingSurfaceY =  height*0 ;
drawingSurfaceWidth = width*4/5 ; 
drawingSurfaceHeight = height*1;

rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}//End setup

void draw() {
  quitButtonDraw();
}//End draw

void keyPressed () {
}//End keyPressed

void mousePressed() {
  quitButtonMouseClicked();
}//End mousePresseds
