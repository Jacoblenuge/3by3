

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
//int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, nightMode=false, startNow=false, reset=false, Correct=false,Wrong=false,Sound=false;
color purple=#FF00FF, resetDefaultInk=#000000, white=#FFFFFF,Black=#050000;
float lineX1, lineY1, lineWidth1, lineHeight1;
float lineX2, lineY2, lineWidth2, lineHeight2;
float lineX3, lineY3, lineWidth3, lineHeight3;
float lineX4, lineY4, lineWidth4, lineHeight4;
float startX2, startY2, startWidth2, startHeight2;
float restartX, restartY, restartWidth, restartHeight;
float quitX, quitY, quitWidth, quitHeight;
color resetButtonColor, grey = #898989;
color startButtonColor;
color quitButtonColor;
int appWidth,appHeight;

void setup() {
  size(1200, 900);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
 song1 = minim.loadFile("../musicused/MusicDownload/Die Flippers - Wir sagen Danke schön [40 Jahre] (HBz & Raphael Maier Remix).mp3"); //able to pass absolute path, file name & extension, and URL
 song2  = minim.loadFile("../musicused/MusicDownload/F-777 - Deadlocked.mp3");
  //
  appWidth = width;
  appHeight = height;
  //Assignment: display algorithm from hello world
  display();
  //display algorithm will populate smaller and larger dimensions
  population();
  textSetup();
  imagePopulation();
  println("when start/quit button text is in corner restart bug");
}//End setup
//
void draw() {
  //assignment #2: OS level mouse click and splash screen
  if ( OS_on == true && splashScreenStart == false) {
    splashScreen(); //OS level mouse click
  }
  if ( splashScreenStart==true ) {
    homeScreen();
    gridDraw();
  }
  if (startNow==true) {
    gridDraw2();
  }
  if ( reset==true ) {
    reset();
    reset=false;
    pic2C2=false;
    pic3C3=false;
    pic4C4=false;
    pic5C5=false;
    pic6C6=false;
    pic7C7=false;
  }
 

if (Correct==true){Win();
}
if (Correct==true){ winimage();
}
if(Wrong==true){Incorect();
}
if (Sound==true){playmusic();
}

}//End draw
//
void keyPressed() {
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
    backgroundWhiteScreen();
    backgroundImage();
  }//End splash Screen Space Bar
  //
  //keyboard short cuts
  if (key=='N' || key=='n') { 
    if (nightMode==true) { 
      nightMode=false;
      backgroundImage();
    } else { 
      nightMode=true;
      backgroundImage();
    }
   
    }
 { }
  if (key=='d' || key=='D') { 
    if (Sound==true) { 
      Sound=false;
    } else { 
      Sound=true;}
     {
{
}
     }
  }
}
{}//End keyPressed
//
void mousePressed() {
  //OS level mouse click
  if ( OS_on==false ) OS_on=true;//End OS level mouse click
  if(Sound==true){
  if ( splashScreenStart == true && mouseX > quitX && mouseX < quitX+quitWidth && mouseY > quitY && mouseY < quitY+quitHeight ) exit();
  if ( splashScreenStart == true && mouseX > startX2 && mouseX < startX2+startWidth2 && mouseY > startY2 && mouseY < startY2+startHeight2 ) startNow=true;}
  if ( startNow == true && mouseX > restartX && mouseX < restartX+restartWidth && mouseY > restartY && mouseY < restartY+restartHeight ) reset=true;
  if ( pic1C1 == true && mouseX > noX1 && mouseX < noX1+noWidth1 && mouseY > noY1 && mouseY < noY1+noHeight1 ) pic2C2=true;
  if ( pic2C2 == true && mouseX > noX2 && mouseX < noX2+noWidth2 && mouseY > noY2 && mouseY < noY2+noHeight2 ) pic3C3=true;
  if ( pic3C3 == true && mouseX > noX3 && mouseX < noX3+noWidth3 && mouseY > noY3 && mouseY < noY3+noHeight3 ) pic4C4=true;
  if ( pic4C4 == true && mouseX > noX4 && mouseX < noX4+noWidth4 && mouseY > noY4 && mouseY < noY4+noHeight4 ) pic5C5=true;
  if ( pic5C5 == true && mouseX > noX5 && mouseX < noX5+noWidth5 && mouseY > noY5 && mouseY < noY5+noHeight5 ) pic6C6=true;
  if ( pic6C6 == true && mouseX > noX6 && mouseX < noX6+noWidth6 && mouseY > noY6 && mouseY < noY6+noHeight6 ) pic7C7=true;
  if ( pic7C7 == true && mouseX > noX7 && mouseX < noX7+noWidth7 && mouseY > noY7 && mouseY < noY7+noHeight7 ) pic8C8=true;
  if ( pic8C8 == true && mouseX > noX8 && mouseX < noX8+noWidth8 && mouseY > noY8 && mouseY < noY8+noHeight8 ) pic9C9=true;
  //exits
  if ( pic9C9 == true && mouseX > noX9 && mouseX < noX9+noWidth9 && mouseY > noY9 && mouseY < noY9+noHeight9 )  exit();
    if ( Correct == true && mouseX > winX && mouseX < winX+winWidth && mouseY > winY && mouseY < winY+winHeight )  exit();
  //Wrong Buttons buttons
  if ( pic1C1 == true && mouseX > yesX1 && mouseX < yesX1+yesWidth1 && mouseY > yesY1 && mouseY < yesY1+yesHeight1 ) Wrong=true;
  if ( pic2C2 == true && mouseX > yesX2 && mouseX < yesX2+yesWidth2 && mouseY > yesY2 && mouseY < yesY2+yesHeight2 ) Wrong=true;
  if ( pic3C3 == true && mouseX > yesX3 && mouseX < yesX3+yesWidth3 && mouseY > yesY3 && mouseY < yesY3+yesHeight3 ) Wrong=true;
  if ( pic4C4 == true && mouseX > yesX4 && mouseX < yesX4+yesWidth4 && mouseY > yesY4 && mouseY < yesY4+yesHeight4 ) Wrong=true;
  if ( pic5C5 == true && mouseX > yesX5 && mouseX < yesX5+yesWidth5 && mouseY > yesY5 && mouseY < yesY5+yesHeight5 ) Wrong=true;
  if ( pic6C6 == true && mouseX > yesX6 && mouseX < yesX6+yesWidth6 && mouseY > yesY6 && mouseY < yesY6+yesHeight6 ) Wrong=true;
  if ( pic8C8 == true && mouseX > yesX8 && mouseX < yesX8+yesWidth8 && mouseY > yesY8 && mouseY < yesY8+yesHeight8 ) Wrong=true;
  if ( pic9C9 == true && mouseX > yesX9 && mouseX < yesX9+yesWidth9 && mouseY > yesY9 && mouseY < yesY9+yesHeight9 ) Wrong=true;
  //right Button
    if ( pic7C7 == true && mouseX > yesX7 && mouseX < yesX7+yesWidth7 && mouseY > yesY7 && mouseY < yesY7+yesHeight7 ) Correct=true;
    //lose button
      if (Wrong== true && mouseX > loseX && mouseX < loseX+loseWidth && mouseY > loseY && mouseY < loseY+loseHeight )exit();
      //music

       int loopNum = 2; //local variable plays once loops twice
  if ( mouseX > forwardX && mouseX < forwardX+forwardWidth && mouseY > forwardY && mouseY < forwardY+forwardHeight ) song1.skip(30000); //skip forward 1 second (1000 milliseconds)
  if ( mouseX > backwardsX && mouseX < backwardsX+backwardsWidth && mouseY > backwardsY && mouseY < backwardsY+backwardsHeight ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( mouseX > loopX && mouseX < loopX+loopWidth && mouseY > loopY && mouseY < loopY+loopHeight ) song1.loop(loopNum);
  if ( mouseX > infiniteLoopX && mouseX < infiniteLoopX+infiniteLoopWidth && mouseY > infiniteLoopY && mouseY < infiniteLoopY+infiniteLoopHeight ) song1.loop(-1); // parameter is for infinite loops
  if ( mouseX > muteX && mouseX < muteX+muteWidth && mouseY > muteY && mouseY < muteY+muteHeight ) {
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  if ( mouseX > playX && mouseX < playX+playWidth && mouseY > playY && mouseY < playY+playHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
    song2.play();
    } else {
      song1.play();
    }
  }
  if ( mouseX > stopX && mouseX < stopX+stopWidth && mouseY > stopY && mouseY < stopY+stopHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); // Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }
}//End mousePressed
//
//End main program
