import controlP5.*;
ControlP5 cp5;
int currentReminder;
ArrayList reminderList;
boolean circlee = false;
int initial = 0;
String dislike = "";
boolean explosionn = false;
boolean minion = false;
PImage explosion;
float expl;
float doubleyew = 300;
float ayych = 60;
float mex = 0;
PImage minioon;
String instructions0 = "type in your dislike in the box and press enter (ie \"when projects don't work and you have to improv last minute \")";

String instructions = "click on the circle to make your dislike explode";
String instructions2 = "click on the blow it out button to blow off the steam";



void setup(){
  size(700,400);
  cp5 = new ControlP5(this);
  cp5.addTextfield("something_you_dont_like")
    .setPosition(150,300)
    ;
  cp5.addButton("blow_it_out")
    .setPosition(150,350)
    .setSize(100,20)
    .setValue(0)
    ;

    explosion = loadImage("explosion.gif");
    minioon = loadImage("minion.jpg");
    
    
}
void draw(){
  if ((explosionn == false)&&(minion==false)){
  background(0);
  fill(255);
  if(circlee == true){
    fill(100);
    ellipse(390,130,150,150);
  }
  else{
    fill(0);
    ellipse(390,130,150,150);
  }
  fill(255);     
  text(dislike, 360,130);
  text(instructions0, 10, 20);
  text(instructions, 10, 40);
  text(instructions2, 10, 60);
  if(mouseX>200&&mouseX<510&&mouseY>100&&mouseY<280&&mousePressed){
    explosionn = true;
    circlee = false;
    fill(200,100,50);
    ellipse(390,130,150,150);
    expl = 5;
  }
  }
  else if((explosionn == true)&&(minion==false)){
    image(explosion,doubleyew-(expl*3),ayych-(expl*3),width/expl, height/expl);
 
    if(expl >= 0)
      expl -=.1;
    else{
      image(explosion,0,0,700,400);
    }
   
  }
  else if((minion == true)&&(explosionn==true)){
    fill(0);
   // rect(-1,-1,702,402);
    image(minioon,mex,30,330,330);
    mex++;
    if (mex>700){
      minion = false;
      mex = 0;
      dislike = "";
      explosionn = false;
    }
  }
    
  
}
public void something_you_dont_like(String theText){
  circlee = true;
  dislike = theText;
    
}
public void blow_it_out(int theValue){
  if (initial == 0)
    initial = 1;
  else{
  println("received");
  //explosionn = false;
  minion = true;
  mex = 0;
  }
}

