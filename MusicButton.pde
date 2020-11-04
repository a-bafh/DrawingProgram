import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
String musicTitle = "Music";
PFont musicButtonFont;
color musicButtonblack = #000000; //Ink
color purpleMusicButton = #FFDBFB;
color yellowMusicButton = #FEFFDB;
float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;

void musicButtonRect() {
  fill(white);
  rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
}
void musicButtonSetup() {
  song[0] = minim.loadFile("Says_to_Speculation.mp3");
  song[1] = minim.loadFile("Spenta_Mainyu.mp3");
  song[2] = minim.loadFile("The_Blue_Pearl.mp3");
  song[3] = minim.loadFile("The_Sleeping_Prophet.mp3");
  song[4] = minim.loadFile("Thunder_Chant.mp3");
  quitButtonFont = createFont ("Harrington", 25); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  musicButtonRect(); //Quit Button
  //
  musicButtonX = width*0/20;
  musicButtonY = height*18/20;
  musicButtonWidth = width*1/20;
  musicButtonHeight = height*2/20;
}

void musicButtonDraw() {
  //HoverOver
  if (mouseX > musicButtonX  && mouseX < musicButtonX + musicButtonWidth && mouseY > musicButtonY && mouseY < musicButtonY + musicButtonHeight ) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    musicButtonRect();
  }

  //Text in Quit Button
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 15); //Change the number until it fits, largest font size
  text(musicTitle, width*0/20, height*18/20, width*1/20, height*2/20);
  fill(255); //Reset to white for rest of the program
}

void musicButtonMouseClicked() {
  if (mouseX > musicButtonX  && mouseX < musicButtonX + musicButtonWidth && mouseY > musicButtonY && mouseY < musicButtonY + musicButtonHeight ) {
    if ( song[currentSong].isPlaying() ) {
      song[0].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
