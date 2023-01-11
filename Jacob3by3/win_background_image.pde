PImage backgroundImage2;


void winimage(){
   if (nightMode==false) tint(tintDayMode, tintDayModeOpacity); //day mode, see ternary operator
  if (nightMode==true) tint(tintRed= 64, tintGreen=64, tintBlue=40, tintNightModeOpacity); //night mode, see ternary operator
  image(backgroundImage2,backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  
  




};//end win image
