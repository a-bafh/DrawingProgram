// Global Variables
color ink, black=#000000, red=#FF0000, blue=#0E02C9, green=#02C903, yellow=#FFFF00, orange=#FFA500;
color Darkred=#790604, Darkblue=#00008B, Darkgreen=#228B22, Darkyellow=#E4CD05, Darkorange=#964000;
color Lightred= #D21404, Lightblue=#ADD8E6, Lightgreen=#39FF14, Lightyellow=#CCFF00, Lightorange=#FDA50F;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float redColourSelectX, redColourSelectY, redColourSelectWidth, redColourSelectHeight;
float blueColourSelectX, blueColourSelectY, blueColourSelectWidth, blueColourSelectHeight;
float greenColourSelectX, greenColourSelectY, greenColourSelectWidth, greenColourSelectHeight;
float yellowColourSelectX, yellowColourSelectY, yellowColourSelectWidth, yellowColourSelectHeight;
float orangeColourSelectX, orangeColourSelectY, orangeColourSelectWidth, orangeColourSelectHeight;
float darkRedColourSelectX, darkRedColourSelectY, darkRedColourSelectWidth, darkRedColourSelectHeight;
float darkBlueColourSelectX, darkBlueColourSelectY, darkBlueColourSelectWidth, darkBlueColourSelectHeight;
float darkGreenColourSelectX, darkGreenColourSelectY, darkGreenColourSelectWidth, darkGreenColourSelectHeight;
float darkYellowColourSelectX, darkYellowColourSelectY, darkYellowColourSelectWidth, darkYellowColourSelectHeight;
float darkOrangeColourSelectX, darkOrangeColourSelectY, darkOrangeColourSelectWidth, darkOrangeColourSelectHeight;
float lightRedColourSelectX, lightRedColourSelectY, lightRedColourSelectWidth, lightRedColourSelectHeight;
float lightBlueColourSelectX, lightBlueColourSelectY, lightBlueColourSelectWidth, lightBlueColourSelectHeight;
float lightGreenColourSelectX, lightGreenColourSelectY, lightGreenColourSelectWidth, lightGreenColourSelectHeight;
float lightYellowColourSelectX, lightYellowColourSelectY, lightYellowColourSelectWidth, lightYellowColourSelectHeight;
float lightOrangeColourSelectX, lightOrangeColourSelectY, lightOrangeColourSelectWidth, lightOrangeColourSelectHeight;
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
  greenColourSelectX = width*5/50;
  greenColourSelectY = height*1/50;
  greenColourSelectWidth = width*1/50 ;
  greenColourSelectHeight = height*1/50 ;
  //
  yellowColourSelectX = width*2/50;
  yellowColourSelectY = height*3/50;
  yellowColourSelectWidth = width*1/50 ;
  yellowColourSelectHeight = height*1/50 ;
  //
  orangeColourSelectX = width*4/50;
  orangeColourSelectY = height*3/50;
  orangeColourSelectWidth = width*1/50;
  orangeColourSelectHeight = height*1/50;
  //
  darkRedColourSelectX =  width*1/50 ;
  darkRedColourSelectY = height*5/50 ; 
  darkRedColourSelectWidth = width*1/50 ;
  darkRedColourSelectHeight = height*1/50 ;
  //
  darkBlueColourSelectX = width*3/50;
  darkBlueColourSelectY = height*5/50 ;
  darkBlueColourSelectWidth = width*1/50 ;
  darkBlueColourSelectHeight = height*1/50 ;
  //
  darkGreenColourSelectX = width*5/50;
  darkGreenColourSelectY = height*5/50;
  darkGreenColourSelectWidth = width*1/50 ;
  darkGreenColourSelectHeight = height*1/50 ;
  //
  darkYellowColourSelectX = width*2/50;
  darkYellowColourSelectY = height*7/50;
  darkYellowColourSelectWidth = width*1/50 ;
  darkYellowColourSelectHeight = height*1/50 ;
  //
  darkOrangeColourSelectX = width*4/50;
  darkOrangeColourSelectY = height*7/50;
  darkOrangeColourSelectWidth = width*1/50;
  darkOrangeColourSelectHeight = height*1/50;
  //
  lightRedColourSelectX =  width*1/50 ;
  lightRedColourSelectY = height*9/50 ; 
  lightRedColourSelectWidth = width*1/50 ;
  lightRedColourSelectHeight = height*1/50 ;
  //
  lightBlueColourSelectX = width*3/50;
  lightBlueColourSelectY = height*9/50 ;
  lightBlueColourSelectWidth = width*1/50 ;
  lightBlueColourSelectHeight = height*1/50 ;
  //
  lightGreenColourSelectX = width*5/50;
  lightGreenColourSelectY = height*9/50;
  lightGreenColourSelectWidth = width*1/50 ;
  lightGreenColourSelectHeight = height*1/50 ;
  //
  lightYellowColourSelectX = width*2/50;
  lightYellowColourSelectY = height*11/50;
  lightYellowColourSelectWidth = width*1/50 ;
  lightYellowColourSelectHeight = height*1/50 ;
  //
  lightOrangeColourSelectX = width*4/50;
  lightOrangeColourSelectY = height*11/50;
  lightOrangeColourSelectWidth = width*1/50;
  lightOrangeColourSelectHeight = height*1/50;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //bellow this is the color buttons
  fill(red);
  rect(redColourSelectX, redColourSelectY, redColourSelectWidth, redColourSelectHeight);
  fill(blue);
  rect(blueColourSelectX, blueColourSelectY, blueColourSelectWidth, blueColourSelectHeight);
  fill(green);
  rect(greenColourSelectX, greenColourSelectY, greenColourSelectWidth, greenColourSelectHeight);
  fill(yellow);
  rect(yellowColourSelectX, yellowColourSelectY, yellowColourSelectWidth, yellowColourSelectHeight);
  fill(orange);
  rect(orangeColourSelectX, orangeColourSelectY, orangeColourSelectWidth, orangeColourSelectHeight);
  //
  fill(Darkred);
  rect (darkRedColourSelectX, darkRedColourSelectY, darkRedColourSelectWidth, darkRedColourSelectHeight);
  fill(Darkblue);
  rect(darkBlueColourSelectX, darkBlueColourSelectY, darkBlueColourSelectWidth, darkBlueColourSelectHeight);
  fill(Darkgreen);
  rect(darkGreenColourSelectX, darkGreenColourSelectY, darkGreenColourSelectWidth, darkGreenColourSelectHeight);
  fill(Darkyellow);
  rect(darkYellowColourSelectX, darkYellowColourSelectY, darkYellowColourSelectWidth, darkYellowColourSelectHeight);
  fill(Darkorange);
  rect(darkOrangeColourSelectX, darkOrangeColourSelectY, darkOrangeColourSelectWidth, darkOrangeColourSelectHeight);
  //
  fill(Lightred);
  rect(lightRedColourSelectX, lightRedColourSelectY, lightRedColourSelectWidth, lightRedColourSelectHeight);
  fill(Lightblue);
  rect(lightBlueColourSelectX, lightBlueColourSelectY, lightBlueColourSelectWidth, lightBlueColourSelectHeight);
  fill(Lightgreen);
  rect(lightGreenColourSelectX, lightGreenColourSelectY, lightGreenColourSelectWidth, lightGreenColourSelectHeight);
  fill(Lightyellow);
  rect(lightYellowColourSelectX, lightYellowColourSelectY, lightYellowColourSelectWidth, lightYellowColourSelectHeight);
  fill(Lightorange);
  rect(lightOrangeColourSelectX, lightOrangeColourSelectY, lightOrangeColourSelectWidth, lightOrangeColourSelectHeight);
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
  if (mouseX>redColourSelectX  && mouseX<redColourSelectX+redColourSelectWidth  && mouseY>redColourSelectY  && mouseY<redColourSelectY+redColourSelectHeight) {
      ink = red;
  }
}
