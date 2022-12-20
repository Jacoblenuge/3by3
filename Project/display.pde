void display(){
 if(appWidth>=appHeight){
  largerDimension = appWidth;
  smallerDimension = appHeight;
  }else{
   largerDimension = appHeight;
  smallerDimension = appWidth;
  }
   println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun, Display Orientation: Portarait ";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
      if (appWidth> appHeight ){
println( "Display Orientation: Landscape or square");
    }
  }
}
println("largerDimension:",largerDimension);
println("smallerDimension:",smallerDimension);
}
//Purpose CANVAS fits moniter& dimesino size know
//Output#1 consle confirms consle will fit in moniterYes
//Output#2 Console confirms displaY ORIENTATION(landscape or portrait)
//Output#3 console confirms dimension sizes (smaller larger)
//Output#4 if error with any above programe will exit
//
//End display
//
//end sup-program
