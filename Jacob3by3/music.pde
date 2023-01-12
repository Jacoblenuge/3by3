//Library: use sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables

float text2X, text2Y;
float forwardX, forwardY, forwardWidth, forwardHeight;
float backwardsX, backwardsY, backwardsWidth, backwardsHeight;
float loopX, loopY, loopWidth, loopHeight;
float infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight;
float muteX, muteY, muteWidth, muteHeight;
float playX, playY, playWidth, playHeight;
float stopX, stopY, stopWidth, stopHeight;
PImage fastForward, backwards, loop, infiniteLoop, mute, play, stop;
color orange = #FF5F1F;
Minim minim; //creates object to access all functions
AudioPlayer song1,song2; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//

//
void musicDraw() {
  background(orange);
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
}//End draw
//
void musickeyPressed() {
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) { //Play Pause stop Button
   if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*4/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End play pause stop button
  int loopNum = 2; //local variable plays once loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum);
  if ( key=='I' || key=='i' ) song1.loop(-1); // parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
 if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
 if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button*/
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
     song1.rewind(); // Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }//End STOP Button
}//End keyPressed
//

//
//End main program
