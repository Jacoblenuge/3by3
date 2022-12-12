int tintDayMode=255,tintDayModeOpacity=50;
int backgroundX,backgroundY,backgroundWidth,backgroundHeight;
int tintRed=64,tintBlue=0,tintGreen=64,tintiNightModeOpacity=85;
void homeScreen() {
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button
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
}//End homeScreen
//
void backgroundWhiteScreen() {
fill(white);
noStroke();
rect(backgroundX,backgroundY,backgroundWidth,backgroundHeight);
strokeWeight(1);//Reset: 1 pixel
fill(white);// Reset: White
}//End backgroundWhiteScreen()
//
//
void backgroundImage(){
 backgroundWhiteScreen();
tint(tintDayMode,tintDayModeOpacity);//Day Mode, see ternary operator
tint(tintRed,tintBlue,tintGreen,tintiNightModeOpacity);//NightMode,see ternary operator
image(backGroundImage,backgroundX,backgroundY,backgroundWidth,backgroundHeight );

//
}//End Background image
//
//End Home Screen Subprogram
