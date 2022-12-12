 //Global variables
int appWidth=1,appHeight=1,smallerDimension,largerDimension;
Boolean OS_on=false,splashScreenStart = false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF,white=#FFFFFF;
/* night mode comment 
purple not for night mode full BLUE
resetDefaultInk is WHITE not night mode frindly full BLUE
*/
//
void setup() {
  
  size(1200,800);
  appWidth = width;
  appHeight = height;
  display();
  //Display algorithim will poulate smaller and larger dimensions
  population();
 textSetup();
 
}//
//
//end setup
//
void draw() {
  ///Assingment OS level mouse click splash screen
  if (OS_on==true && splashScreenStart==false) splashScreen();//os level mouse click
  if ( splashScreenStart==true ) homeScreen();
}//
//
//end draw
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
}//End mousePressed
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
    backgroundWhiteScreen();
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
}//End keyPressed
//
//End Main program
