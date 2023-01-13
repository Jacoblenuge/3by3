//Library: use sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
float appWidth, appHeight;
float textX, textY;
float forwardX, forwardY, forwardWidth, forwardHeight;
float backwardsX, backwardsY, backwardsWidth, backwardsHeight;
float loopX, loopY, loopWidth, loopHeight;
float infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight;
float muteX, muteY, muteWidth, muteHeight;
float playX, playY, playWidth, playHeight;
float stopX, stopY, stopWidth, stopHeight;
float playAlarmX, playAlarmY, playAlarmWidth, playAlarmHeight;
float stopAlarmX, stopAlarmY, stopAlarmWidth, stopAlarmHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
PImage fastForward, backwards, loop, infiniteLoop, mute, play, stop, background;
boolean nightMode=false;
color green = #64F545, nightModegreen = #64F500;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
AudioPlayer song2;
//
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //song3 = minim.loadFile("../musicused/MusicDownload/Die Flippers - Wir sagen Danke schön [40 Jahre] (HBz & Raphael Maier Remix).mp3"); //able to pass absolute path, file name & extension, and URL
  song1 = minim.loadFile("../musicused/MusicDownload/F-777 - Deadlocked.mp3");
  song2 = minim.loadFile("../musicused/MusicDownload/Imperial Alert⧸Death Star Alarm(Clean).mp3");
  //population
  textX = appWidth * 7/20;
  textY = appHeight * 2/20;
  forwardX = appWidth * 8.5/20;
  forwardY = appHeight * 4/20;
  forwardWidth = appWidth * 3/20;
  forwardHeight = appHeight * 2/20;
  fastForward = loadImage ("../images/fastforward.jpg");
  backwardsX = appWidth * 8.5/20;
  backwardsY = appHeight * 7/20;
  backwardsWidth = appWidth * 3/20;
  backwardsHeight = appHeight * 2/20;
  backwards = loadImage ("../images/rewind.jpg");
  loopX = appWidth * 8.5/20;
  loopY = appHeight * 10/20;
  loopWidth = appWidth * 3/20;
  loopHeight = appHeight * 2/20;
  loop = loadImage ("../images/loop.jpg");
  infiniteLoopX = appWidth * 8.5/20;
  infiniteLoopY = appHeight * 13/20;
  infiniteLoopWidth = appWidth * 3/20;
  infiniteLoopHeight = appHeight * 2/20;
  infiniteLoop = loadImage ("../images/infinitloop.jpg");
  muteX = appWidth * 8.5/20;
  muteY = appHeight * 16/20;
  muteWidth = appWidth * 3/20;
  muteHeight = appHeight * 2/20;
  mute = loadImage ("../images/mute.jpg");
  playX = appWidth * 4.5/20;
  playY = appHeight * 4/20;
  playWidth = appWidth * 3/20;
  playHeight = appHeight * 2/20;
  play = loadImage ("../images/play.jpg");
  stopX = appWidth * 12.5/20;
  stopY = appHeight * 4/20;
  stopWidth = appWidth * 3/20;
  stopHeight = appHeight * 2/20;
  stop = loadImage ("../images/stop.jpg");
  playAlarmX = appWidth * 4.5/20;
  playAlarmY = appHeight * 7/20;
  playAlarmWidth = appWidth * 3/20;
  playAlarmHeight = appHeight * 2/20;
  stopAlarmX = appWidth * 4.5/20;
  stopAlarmY = appHeight * 10/20;
  stopAlarmWidth = appWidth * 3/20;
  stopAlarmHeight = appHeight * 2/20;
}//End setup
//
void draw() {
  //background(orange);
  if (nightMode==true) {
    background(nightModegreen);
  } else {
    background(green);
  }
  fill(0);
  textSize(60);
  text("Music Player", textX, textY);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  image(fastForward, forwardX, forwardY, forwardWidth, forwardHeight);
  rect(backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  image(backwards, backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  rect(loopX, loopY, loopWidth, loopHeight);
  image(loop, loopX, loopY, loopWidth, loopHeight);
  rect(infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  image(infiniteLoop, infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
  image(mute, muteX, muteY, muteWidth, muteHeight);
  rect(playX, playY, playWidth, playHeight);
  image(play, playX, playY, playWidth, playHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  image(stop, stopX, stopY, stopWidth, stopHeight);
  fill(0, 255, 0);
  rect(playAlarmX, playAlarmY, playAlarmWidth, playAlarmHeight);
  fill(0);
  textSize(40);
  text("Play Alarm", playAlarmX, playAlarmY, playAlarmWidth, playAlarmHeight);
  fill(255, 0, 0);
  rect(stopAlarmX, stopAlarmY, stopAlarmWidth, stopAlarmHeight);
  fill(0);
  textSize(40);
  text("Stop Alarm", stopAlarmX, stopAlarmY, stopAlarmWidth, stopAlarmHeight);
}//End draw
//
void keyPressed() {
  if (key == 'N' || key == 'n') {
    if (nightMode==false) {
      nightMode=true;
    } else {
      nightMode=false;
    }
  }
}//End keyPressed
//
void mousePressed() {
  int loopNum = 2; //local variable plays once loops twice
  if ( mouseX > forwardX && mouseX < forwardX+forwardWidth && mouseY > forwardY && mouseY < forwardY+forwardHeight ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
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
    } else if ( song1.position() >= song1.length()-song1.length()*3/5 ) {
      song1.rewind();
      song1.play();
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
  if ( mouseX > playAlarmX && mouseX < playAlarmX+playAlarmWidth && mouseY > playAlarmY && mouseY < playAlarmY+playAlarmHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
    } else if ( song2.position() >= song2.length()-song2.length()*1/5 ) {
      song2.rewind();
      song2.play();
    } else {
      song2.play();
    }
  }
  if ( mouseX > stopAlarmX && mouseX < stopAlarmX+stopAlarmWidth && mouseY > stopAlarmY && mouseY < stopAlarmY+stopAlarmHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
      song2.rewind(); // Cue SONG to play from beginning
    } else {
      song2.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }
}//End mousePressed
//
//End main program
