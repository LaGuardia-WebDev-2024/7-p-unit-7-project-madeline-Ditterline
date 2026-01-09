//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var pupilHeight = 100;
var opacity = 0;
var X = 300;
var Y = 200;
irisHeight = 200;
scleraHeight = 275;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,opacity);

triangle(eyeTop1X,eyeTop2Y,eyeTop2X,eyeTop2Y,eyeTop3X,eyeTop3y);


stroke(255,255,255);
fill(255,255,255);
ellipse(X,Y,275,scleraHeight);

stroke(25,138,46);
fill(25, 138, 46);
ellipse(X,Y,200,irisHeight);

  fill(1,1,1);
ellipse(X,Y,100,pupilHeight);




  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
