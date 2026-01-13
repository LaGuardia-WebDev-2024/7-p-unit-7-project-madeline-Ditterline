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
scleraHeight = 0;
var eYe1 = 200;
var eYe2 = 200;
var timer = 0;
  var closedeye = 1000;
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(1,1,1,opacity);



timer = timer + 1;


 


//sclera
stroke(255,255,255);
strokeWeight(2)
fill(255,255,255);
triangle(228,eYe1,228,eYe2,48,200);
triangle(373,eYe1,373,eYe2,554,200);
strokeWeight(1)
ellipse(X,Y,275,scleraHeight);

//iris
stroke(25,138,46);
fill(25, 138, 46);
ellipse(X,Y,200,irisHeight);

//pupil
  fill(1,1,1);
ellipse(X,Y,100,pupilHeight);

//closed eye
stroke(1,1,1,closedeye);
strokeWeight(2);
line(48,200,554,200);

if(timer > 250){

//i wanted it to like blink but i cant reset it
pupilHeight = pupilHeight + 1;
if(pupilHeight > 100){
  pupilHeight = pupilHeight - 1
}
irisHeight = irisHeight + 2;
if (irisHeight > 200){
  irisHeight = irisHeight - 2
}
scleraHeight = scleraHeight + 2.75;
if (scleraHeight > 275){
  scleraHeight = scleraHeight - 2.75
}
eYe1 = eYe1 - 1.15;
if (eYe1 < 83){
  eYe1 = eYe1 + 1.15;
}
eYe2 = eYe2 + 1.15;
if (eYe2 > 317){
  eYe2 = eYe2 - 1.15;
}
opacity = opacity + 2;
if(opacity > 750){
  opacity = opacity - 2
}
closedeye = closedeye - 1000;
}
  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}



//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)



