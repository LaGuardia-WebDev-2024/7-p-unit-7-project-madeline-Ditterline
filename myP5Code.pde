//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var pupilHeight = 0;
var opacity = 0;
var X = 300;
var Y = 200;
irisHeight = 0;
scleraHeight = 275;
var eYe1 = 83;
var eYe2 = 317;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(1,1,1,opacity);




stroke(255,255,255);
fill(255,255,255);
triangle(228,eYe1,228,eYe2,48,200);
triangle(373,eYe1,373,eYe2,554,200);
ellipse(X,Y,275,scleraHeight);

stroke(25,138,46);
fill(25, 138, 46);
ellipse(X,Y,200,irisHeight);

  fill(1,1,1);
ellipse(X,Y,100,pupilHeight);

pupilHeight = pupilHeight + 1;
if(pupilHeight > 100){
  pupilHeight = pupilHeight - 1
}
irisHeight = irisHeight + 1;
if (irisHeight > 200){
  irisHeight = irisHeight - 1
}
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
