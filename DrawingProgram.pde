// Global Variables
color ink, black=#000000, red=#FF0000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float redColourSelectX, redColourSelectY, redColourSelectWidth, redColourSelectHeight;
float blueColourSelectX, blueColourSelectY, blueColourSelectWidth, blueColourSelectHeight;
float greenColourSelectX, greenColourSelectY,greenColourSelectWidth, greenColourSelectHeight;
float yellowColourSelectX, yellowColourSelectY, yellowColourSelectWidth, yellowColourSelectHeight;
float orangeColourSelectX, orangeColourSelectY,orangeColourSelecWidth, orangeColourSelecHeight;
float darkredColourSelectX, darkredColourSelectY, darkredColourSelectWidth, darkredColourSelecHeight;
float darkblueColourSelectX, darkblueColourSelectY, darkblueColourSelectWidth, darkblueColourSelectHeight;
float darkgreenColourSelectX, darkgreenColourSelectY, darkgreenColourSelectWidth, darkgreenColourSelectHeight;
float darkyellowColourSelectX, darkyellowColourSelectY, darkyellowColourSelectWidth, darkyellowColourSelectHeight;
float darkorangeColourSelectX,  darkorangeColourSelectY,  darkorangeColourSelectWidth,  darkorangeColourSelectHeight;
float lightredColourSelectX, lightredColourSelectY, lightredColourSelectWidth, lightredColourSelectHeight;
float lightblueColourSelectX, lightblueColourSelectY, lightblueColourSelectWidth, lightblueColourSelectHeight;
float lightgreenColourSelectX,lightgreenColourSelectY, lightgreenColourSelectWidth, lightgreenColourSelectHeight;
float lightyellowColourSelectX, lightyellowColourSelectY, lightyellowColourSelectWidth, lightyellowColourSelectHeight;
float lightorangeColourSelectX, lightorangeColourSelectY, lightorangeColourSelectWidth, lightorangeColourSelectHeight;
Boolean draw=false;

void setup() {
  size(800, 600);
  quitButtonSetup();
  drawingSurfaceX = width*3/20;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1 ; 
  drawingSurfaceHeight = height*1;
  //
  redColourSelectX =  width*1/50 ;
  redColourSelectY = height*1/50 ; 
  redColourSelectWidth = width*1/50 ;
  redColourSelectHeight = height*1/50 ;
  //
  blueColourSelectX = width*3/50;
  blueColourSelectY = height*1/50 ;
  blueColourSelectWidth = width*1/50 ;
  blueColourSelectHeight = height*1/50 ;
  //
  
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //bellow this is the color buttons
  rect(redColourSelectX, redColourSelectY, redColourSelectWidth,redColourSelectHeight);
  rect(blueColourSelectX, blueColourSelectY, blueColourSelectWidth, blueColourSelectHeight);
  rect(greenColourSelectX, greenColourSelectY,greenColourSelectWidth, greenColourSelectHeight);
  rect(yellowColourSelectX, yellowColourSelectY, yellowColourSelectWidth, yellowColourSelectHeight);
  rect(orangeColourSelectX, orangeColourSelectY,orangeColourSelecWidth, orangeColourSelecHeight);
}

void draw() {
  quitButtonDraw();

  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
}

void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink
    drawingDiameter = width*1/100;
  }
}
