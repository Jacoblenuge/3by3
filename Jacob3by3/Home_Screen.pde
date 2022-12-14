int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitX, quitY, quitWidth, quitHeight;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85; //BLUE should be Zero or as close to it
//
/* Home Screen Expectations
  - Background image using tint()
  - 9 evenly spaced rectangles, Assignment #3
  - Quit Button and Reset Button (Splash Screen Start Button)
  - In each: image, text, 2D Shape, Button
  - Narrative through the 9 rectangles
  - See Case Study
  - Note: must have one image with aspect ratio
  */
 //
void homeScreen() {
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button
  //
  //rect( quitX, quitY, quitWidth, quitHeight );
  if(mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight){//Quitbutton  Hoverover
  //Cookie aspect ratio
  fill(white);
  rect(quitX, quitY, quitWidth, quitHeight);
  noFill();
  }else{
    quitButtonText();
  }

}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset: 1 pixel
  fill(white); //Reset: white
}//End backgroundWhiteScreen()
//
void backgroundImage() {
  backgroundWhiteScreen();
  if ( nightMode==false ) tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
  if ( nightMode==true ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity ); //Night Mode, see ternary operator
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End backgroundImage
//
//End Home Screen Subprogram
