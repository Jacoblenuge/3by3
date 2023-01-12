PFont Harrington;
//
void textSetup() {
  //minimum expectation = 1 font
  //
  //Fonts from OS (Operating System)
  // String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  Harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
}//End textSetup
//
void spaceBarText() {
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 38;
  textFont(Harrington, size); 
  String spaceBar = "Press the SPACE BAR to continue";
  text(spaceBar, startX, startY, startWidth, startHeight);
  fill(resetDefaultInk);
}//End spaceBarText
void winText() {
  fill(Black); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 38;
  textFont(Harrington, size); 
  String win = "Correct You Win!!! Click Here To Exit";
  text(win, winX,winY,winWidth,winHeight);
  fill(resetDefaultInk);
}//End winText
//
//
void loseText() {
  fill(Black); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 38;
  textFont(Harrington, size); 
  String lose = "Wrong You Lose.Click Here To Exit";
  text(lose, loseX,loseY,loseWidth,loseHeight);
  fill(resetDefaultInk);
}//EndloseText
//
//
//
void infoText() {
  fill(Black); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 20;
  textFont(Harrington, size); 
  String info = "Find the pciture from Warhammer 40k to win";
  text(info, textX,textY,textWidth,textHeight);
  fill(resetDefaultInk);
}//EndloseText
//
//End text subprogram
