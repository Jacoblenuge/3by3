//Global variables
int appWidth=1, appHeight=1, smallerDimension, largerDimension;
Boolean nightMode=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF, white=#FFFFFF,red=#F70A0A;


void setup() {
  size(1207, 905);//Dont change if you do use varibles of 3 for quick corections
  appWidth = width;
  appHeight = height;
  display();
  population();

  imagePopulation();
  
}



void draw() {
  backgroundImage();
  noFill();
  rectgrid();
}




void mousePressed() {
}




void keyPressed() {
 if (key=='N' || key=='n') {
    if (nightMode==true) {
      nightMode=false;
     // backgroundImage();
    } else {
      nightMode=true;
      //backgroundImage();
    }
  };
}
