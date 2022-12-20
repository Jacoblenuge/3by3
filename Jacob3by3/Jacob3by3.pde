//Global variables
int appWidth=1, appHeight=1, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart = false, rectgrid=false, GameStart=false, Backgroundredscreenstart=false,Backgroundstart=false,redstart=false;
Boolean nightMode=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF, white=#FFFFFF,red=#F70A0A;
/* night mode comment 
 purple not for night mode full BLUE
 resetDefaultInk is WHITE not night mode frindly full BLUE
 */
//
void setup() {

  size(1207, 905);//Dont change if you do use varibles of 3 for quick corections
  appWidth = width;
  appHeight = height;
  display();
  //Display algorithim will poulate smaller and larger dimensions
  population();
  textSetup();
  imagePopulation();
  //if(GameStart==true)Game();
 // if(GameStart==true)rectgrid=true;
  //if(GameStart==true)splashScreenStart=false;
   //if(GameStart==true)OS_on=true;
   //if(GameStart==true)backgroundWhiteScreen=false;
   //if(GameStart==true)splashScreenStart=false;
  //if(Backgroundredscreenstart==true)backgroundredScreen();
 //if (Backgroundstart==true) backgroundredScreen();
 // if (redstart==true){Backgroundstart=true;}else{Backgroundstart=false;}
 // if (rectgrid=true){splashScreenStart=false;}
 //if (GameStart=true)splashScreenStart =false;
 if (GameStart=true) {
   background(255);
 }
  if (GameStart=true)OS_on =false;
  if (GameStart=false)OS_on =true;
   if (GameStart=false)splashScreenStart =true;

}//
//
//end setup
//
void draw() {
  ///Assingment OS level mouse click splash screen
//if (OS_on==true && splashScreenStart==false) splashScreen();//os level mouse click
  //if ( splashScreenStart==true ) homeScreen();
  if (rectgrid==true)rectgrid();
 // if ( splashScreenStart==true ) println("Press Enter or V/v to start ");
}//
//
//end draw
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
  //QuitButton
  //if(splashScreenStart==true &&  mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight) exit();
    if ( rectgrid== true && mouseX > ButtonX2 && mouseX < ButtonX2+ButtonWidth2 && mouseY > ButtonY2 && mouseY < ButtonY2+ButtonHeight2 ) exit();
 if ( rectgrid== true && mouseX > ButtonX3 && mouseX < ButtonX3+ButtonWidth3 && mouseY > ButtonY3 && mouseY < ButtonY3+ButtonHeight3 );  rectgrid=false;     
 if ( rectgrid== true && mouseX > ButtonX && mouseX < ButtonX+ButtonWidth && mouseY > ButtonY && mouseY < ButtonY+ButtonHeight ) GameStart=true;
}//End mousePressed
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
   // backgroundWhiteScreen();     
    //backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  if ( splashScreenStart == true && key== ENTER || key=='v' || key=='V') {
    rectgrid=true;
  };


   
  //
  //key board short cuts
  if (key==CODED && keyCode==ESC)exit();
  if (key == 'Q' || key=='q')exit();
  if (key=='N' || key=='n') {
    if (nightMode==true) {
      nightMode=false;
     // backgroundImage();
    } else {
      nightMode=true;
      //backgroundImage();
    }
  };
  //
}//End keyPressed
//
//End Main program
