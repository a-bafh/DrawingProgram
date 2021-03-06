import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
color ink, black=#000000, white=#FFFFFF, red=#FF0000, blue=#0E02C9, green=#02C903, yellow=#FFFF00, orange=#FFA500;
color Darkred=#790604, Darkblue=#00008B, Darkgreen=#228B22, Darkyellow=#E4CD05, Darkorange=#964000;
color Lightred= #D21404, Lightblue=#ADD8E6, Lightgreen=#39FF14, Lightyellow=#CCFF00, Lightorange=#FDA50F;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float redColourSelectX, redColourSelectY, redColourSelectWidth, redColourSelectHeight;
float blueColourSelectX, blueColourSelectY, blueColourSelectWidth, blueColourSelectHeight;
float greenColourSelectX, greenColourSelectY, greenColourSelectWidth, greenColourSelectHeight;
float yellowColourSelectX, yellowColourSelectY, yellowColourSelectWidth, yellowColourSelectHeight;
float orangeColourSelectX, orangeColourSelectY, orangeColourSelectWidth, orangeColourSelectHeight;
float blackColourSelectX, blackColourSelectY, blackColourSelectWidth, blackColourSelectHeight;
float eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight;
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
float brushSizeX1, brushSizeY1, brushSizeDiameter1;
float brushSizeX2, brushSizeY2, brushSizeDiameter2;
float brushSizeX3, brushSizeY3, brushSizeDiameter3;
float brushsize;
  Boolean draw=false;

void setup() {
  size(800, 600);
  quitButtonSetup();
  musicButtonSetup();
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
  eraserButtonX = width*6/50;
  eraserButtonY = height*11/50;
  eraserButtonWidth = width*1/50;
  eraserButtonHeight = height*1/50;
  //
  blackColourSelectX = width*0/50;
  blackColourSelectY = height*11/50;
  blackColourSelectWidth = width*1/50;
  blackColourSelectHeight = height*1/50;
  //
  brushsize = width*1/100;
  //
  brushSizeX1 = width*1/50 ;
  brushSizeY1 = height*15/50 ;
  brushSizeDiameter1 = width*5/250 ;
  brushSizeDiameter1 = height*5/250 ;
  //
  brushSizeX2 = width*3/50 ;
  brushSizeY2  = height*15/50 ;
  brushSizeDiameter2  = width*10/250 ;
  brushSizeDiameter2  = height*10/250 ;
  //
  brushSizeX3 = width*6/50 ;
  brushSizeY3 = height*15/50 ;
  brushSizeDiameter3 = width*15/250 ;
  brushSizeDiameter3 = height*15/250 ;
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
  fill(white);
  rect(eraserButtonX, eraserButtonY, eraserButtonWidth, eraserButtonHeight);
  fill(black);
  rect(blackColourSelectX, blackColourSelectY, blackColourSelectWidth, blackColourSelectHeight);
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
  //
  fill(black);
  ellipse(brushSizeX1, brushSizeY1, brushSizeDiameter1, brushSizeDiameter1);
  ellipse(brushSizeX2, brushSizeY2, brushSizeDiameter2, brushSizeDiameter2);
  ellipse(brushSizeX3, brushSizeY3, brushSizeDiameter3, brushSizeDiameter3);
  //
  fill(white);
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);

  ink = black; // example to change ink
}

void draw() {
  quitButtonDraw();
  musicButtonDraw();

  if (draw == true &&  mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    noStroke();
    strokeWeight(brushsize);
    ellipse(mouseX, mouseY, brushsize, brushsize);
    strokeWeight(1);
    stroke(1);
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
  }


  if (mouseX>redColourSelectX  && mouseX<redColourSelectX+redColourSelectWidth  && mouseY>redColourSelectY  && mouseY<redColourSelectY+redColourSelectHeight) {

    ink = red;
  }

  if (mouseX>blueColourSelectX  && mouseX<blueColourSelectX+blueColourSelectWidth  && mouseY>blueColourSelectY  && mouseY<blueColourSelectY+blueColourSelectHeight) {
    ink = blue;
  }

  if (mouseX>greenColourSelectX  && mouseX<greenColourSelectX+greenColourSelectWidth  && mouseY>greenColourSelectY  && mouseY<greenColourSelectY+greenColourSelectHeight) {
    ink = green;
  }

  if (mouseX>yellowColourSelectX  && mouseX<yellowColourSelectX+blueColourSelectWidth  && mouseY>yellowColourSelectY  && mouseY<yellowColourSelectY+yellowColourSelectHeight) {
    ink = yellow;
  }

  if (mouseX>orangeColourSelectX  && mouseX<orangeColourSelectX+orangeColourSelectWidth  && mouseY>orangeColourSelectY  && mouseY<orangeColourSelectY+orangeColourSelectHeight) {
    ink = orange;
  }

  if (mouseX>darkRedColourSelectX  && mouseX<darkRedColourSelectX+darkRedColourSelectWidth  && mouseY>darkRedColourSelectY  && mouseY<darkRedColourSelectY+darkRedColourSelectHeight) {

    ink = Darkred;
  }

  if (mouseX>darkBlueColourSelectX  && mouseX<darkBlueColourSelectX+darkBlueColourSelectWidth  && mouseY>darkBlueColourSelectY  && mouseY<darkBlueColourSelectY+darkBlueColourSelectHeight) {
    ink = Darkblue;
  }

  if (mouseX>darkGreenColourSelectX  && mouseX<darkGreenColourSelectX+darkGreenColourSelectWidth  && mouseY>darkGreenColourSelectY  && mouseY<darkGreenColourSelectY+greenColourSelectHeight) {
    ink = Darkgreen;
  }

  if (mouseX>darkYellowColourSelectX  && mouseX<darkYellowColourSelectX+darkYellowColourSelectWidth  && mouseY>darkYellowColourSelectY  && mouseY<darkYellowColourSelectY+darkYellowColourSelectHeight) {
    ink = Darkyellow;
  }

  if (mouseX>darkOrangeColourSelectX  && mouseX<darkOrangeColourSelectX+darkOrangeColourSelectWidth  && mouseY>darkOrangeColourSelectY  && mouseY<darkOrangeColourSelectY+darkOrangeColourSelectHeight) {
    ink = Darkorange;
  }

  if (mouseX>lightRedColourSelectX  && mouseX<lightRedColourSelectX+lightRedColourSelectWidth  && mouseY>lightRedColourSelectY  && mouseY<lightRedColourSelectY+redColourSelectHeight) {

    ink = Lightred;
  }

  if (mouseX>lightBlueColourSelectX  && mouseX<lightBlueColourSelectX+lightBlueColourSelectWidth  && mouseY>lightBlueColourSelectY  && mouseY<lightBlueColourSelectY+lightBlueColourSelectHeight) {
    ink = Lightblue;
  }

  if (mouseX>lightGreenColourSelectX  && mouseX<lightGreenColourSelectX+lightGreenColourSelectWidth  && mouseY>lightGreenColourSelectY  && mouseY<lightGreenColourSelectY+lightGreenColourSelectHeight) {
    ink = Lightgreen;
  }

  if (mouseX>lightYellowColourSelectX  && mouseX<lightYellowColourSelectX+lightYellowColourSelectWidth  && mouseY>lightYellowColourSelectY  && mouseY<lightYellowColourSelectY+lightYellowColourSelectHeight) {
    ink = Lightyellow;
  }

  if (mouseX>lightOrangeColourSelectX  && mouseX<lightOrangeColourSelectX+lightOrangeColourSelectWidth  && mouseY>lightOrangeColourSelectY  && mouseY<lightOrangeColourSelectY+lightOrangeColourSelectHeight) {
    ink = Lightorange;
  }

  if (mouseX>eraserButtonX && mouseX<eraserButtonX+eraserButtonWidth && mouseY>eraserButtonY && mouseY<eraserButtonY+eraserButtonHeight) {
    ink = white;
  }

  if (mouseX>blackColourSelectX && mouseX<blackColourSelectX+blackColourSelectWidth && mouseY>blackColourSelectY && mouseY<blackColourSelectY+blackColourSelectHeight) {
    ink = black;
  }

  if (mouseX>brushSizeX1 && mouseX<brushSizeX1+brushSizeDiameter1 && mouseY>brushSizeY1 && mouseY<brushSizeY1+brushSizeDiameter1) {
    brushsize =  width*1/100;
  }

  if (mouseX>brushSizeX2 && mouseX<brushSizeX2+brushSizeDiameter2 && mouseY>brushSizeY2 && mouseY<brushSizeY2+brushSizeDiameter2) {
    brushsize = width*2.5/100;
  }

  if (mouseX>brushSizeX3 && mouseX<brushSizeX3+brushSizeDiameter3 && mouseY>brushSizeY3 && mouseY<brushSizeY3+brushSizeDiameter3) {
    brushsize = width*5/100;
  }
}
