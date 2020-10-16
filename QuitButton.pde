// Global Variables
String title= "X";
PFont quitButtonFont;
color purple = #2C08FF; //Ink
color purpleQuitButton = #FFDBFB;
color yellowQuitButton = #FEFFDB;

void quitButtonRect() {
  rect(width*2/20, height*18/20, width*1/20, height*2/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

void quitButtonDraw() {
  //HoverOver
  if (mouseX >= width*2/20  && mouseX <= width && mouseY >= height*18/20 && mouseY <= height*2/20) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    quitButtonRect();
  }

  //Text in Quit Button
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 25); //Change the number until it fits, largest font size
  text(title, width*2/20, height*18/20, width*1/20, height*2/20);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX >= width*1/20  && mouseX <= width*2/20 && mouseY >= height*2/20 && mouseY <= height*18/20) {
 
  }
}
