//Global variables
int appWidth=1,appHeight=1,smallerDimension,largerDimension;
Boolean OS_on=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF;
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
  if (OS_on==true) splashScreen();//os level mouse click
}//
//
//end draw
//
void mousePressed() {
  //os level mouse click
  if (OS_on==false )OS_on=true;//end OS level mouse cdlick
}//
//
//End mousePressed
//
void keyPressed() {
}//
//
//End keyPressed
//
//End Main program
