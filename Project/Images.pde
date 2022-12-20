PImage backGroundImage;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85; //BLUE should be Zero or as close to it
//
//
void imagePopulation() {
  backGroundImage = loadImage ("../Images/planets-galaxy-science-fiction-wallpaper-beauty-deep-space-planets-galaxy-science-fiction-wallpaper-beauty-deep-123015144.jpg");
}//End imagePopulation
//
void imageNightMode() {
  //if ( nightMode==false ) tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
 // if ( nightMode==true ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity ); //Night Mode, see ternary operator
  //
  if ( nightMode==true) {
     tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity );
  } else {
    tint( tintDayMode, tintDayModeOpacity );
  }
}//End imageNightMode
//
void backgroundImage() {
  
  imageNightMode();
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End backgroundImage
