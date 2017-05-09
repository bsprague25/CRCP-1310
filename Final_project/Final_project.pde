//Author: Bailey Sprague
//May 9, 2017
//Interactive 12-Month Calendar

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int rows = 3;
int cols = 4;
float monthSize = 200;

Month[][] calendar = new Month[rows][cols];
Minim m;
AudioPlayer background;

void setup() {
  size(800,600);
  for( int i = 0; i<rows; i++){
    for(int j = 0; j<cols; j++){
      calendar[i][j] = new Month(j*monthSize, i*monthSize, monthSize);
      calendar[i][j].drawMonth();
      m = new Minim(this);
      background = m.loadFile("guitar.wav");
    }
  }
}

void draw() {
  textSize(20);
    fill(255);
    text("January",60,30);
    text("February", 260,30);
    text("March", 470,30);
    text("April", 670,30);
    text("May", 75,230);
    text("June", 275,230);
    text("July", 475,230);
    text("August", 670,230);
    text("September", 50,430);
    text("October", 260,430);
    text("November", 450,430);
    text("December", 650,430); 
}

void mousePressed(){
   float x = 0;
   float y = 0;
   for(int i =0;i<20;i++){
      //jan
      strokeWeight(1);
      stroke(171,250,252);
      fill(255);
      ellipse(random(x+5,x+180),random(y+40,y+180),5,5);
      //feb
      textSize(10);
      fill(random(100,255),0,0);
      text("Love",random(x+200,x+380),random(y+40,y+180));
      //mar
      stroke(0,random(100,255),0);
      strokeWeight(4);
      pushMatrix();
      translate(random(410,590),random(50,190));
      for(int j = 0; j<10; j++){
        rotate(TWO_PI/4);
        line(0,0,5,5);
      }
      popMatrix();
      //apr
      noStroke();
      fill(random(100,255),random(100,255),random(100,255));
      ellipse(random(x+610,x+790),random(y+40,y+180),7,11);
      //may
      pushMatrix();
      translate(random(10,190),random(250,390));
      for(int j =0; j<10; j++){
        rotate(TWO_PI/7);
        strokeWeight(2);
        stroke(random(100,255),random(100,255),random(100,255));
        line(0,0,5,0);
      }
      popMatrix();
      //jun
      noStroke();
      fill(0,0,random(100,255));
      ellipse(random(x+210,x+390),random(y+240,y+380),7,7);
      //oct
      textSize(10);
      fill(255);
      text("BOO",random(x+210,x+370),random(y+450,y+580)); 
      textSize(15);
      fill(80,6,126);
      text("BOO",random(x+210,x+365),random(y+450,y+580));
      //dec
      noStroke();
      fill(250,0,0);
      ellipse(random(x+610,x+790),random(y+440,y+580),5,5);
      fill(255);
      ellipse(random(x+610,x+790),random(y+440,y+580),5,5);
   }
   for(int i=0; i<5;i++){
      //aug
      textSize(13);
      fill(255,224,98);
      text("Sunshine",random(x+600,x+780),random(y+250,y+380));
   }
  
   for(int i=0;i<3;i++){
      //jul
      pushMatrix();
      translate(random(x+420,X+580),random(Y+250,Y+380));
      for(int j =0; j<12; j++){
        rotate(TWO_PI/12);
        strokeWeight(2);
        stroke(255,0,0);
        line(0,0,15,0);
      }
      popMatrix();
      pushMatrix();
      translate(random(x+420,X+580),random(Y+250,Y+380));
      for(int j =0; j<12; j++){
        rotate(TWO_PI/12);
        strokeWeight(2);
        stroke(0,0,255);
        line(0,0,15,0);
      }
      popMatrix();
      pushMatrix();
      translate(random(x+420,X+580),random(Y+250,Y+380));
      for(int j =0; j<12; j++){
        rotate(TWO_PI/12);
        strokeWeight(2);
        stroke(255);
        line(0,0,15,0);
      }
      popMatrix();
      //sept
      noStroke();
      fill(234,208,2);
      ellipse(random(x+10,x+180),random(y+440,y+580),12,12);
      fill(234,154,2);
      ellipse(random(x+5,x+180),random(y+440,y+580),10,10);
      fill(234,53,2);
      ellipse(random(x+5,x+180),random(y+440,y+580),7,7);
      fill(88,49,38);
      ellipse(random(x+5,x+180),random(y+440,y+580),10,10);
      //nov
      //sept
      noStroke();
      fill(227,110,0);
      ellipse(random(x+410,x+580),random(y+440,y+580),12,12);
      fill(118,48,160);
      ellipse(random(x+405,x+580),random(y+440,y+580),10,10);
      fill(21,129,27);
      ellipse(random(x+405,x+580),random(y+440,y+580),7,7);
      fill(88,49,38);
      ellipse(random(x+405,x+580),random(y+440,y+580),10,10);
      fill(234,208,2);
      ellipse(random(x+405,x+580),random(y+440,y+580),7,7);
   }
}

void keyPressed(){
  if(key == 'j'){
    drawJanuary();
  }
  if(key == 'f'){
    drawFebruary();
  }
  if(key == 'm'){
    drawMarch();
  }
  if(key == 'a'){
    drawApril();
  }
  if(key == 'M'){
    drawMay();
  }
  if(key == 'J'){
    drawJune();
  }
  if(key == 'l'){
    drawJuly();
  }
  if(key == 'A'){
    drawAugust();
  }
  if(key == 's'){
    drawSeptember();
  }
  if(key == 'o'){
    drawOctober();
  }
  if(key == 'n'){
    drawNovember();
  }
  if(key == 'd'){
    drawDecember();
  }
  if(key == ' '){
    background.rewind();
    background.play();
  }
}

void drawJanuary(){
  pushMatrix();
    translate(100,100);
    for(int i =0; i<10; i++){
      rotate(TWO_PI/6);
      strokeWeight(3);
      stroke(112,237,252);
      line(0,45,0,0);
      line(10,40,0,30);
      line(-10,40,0,30);
  }
  popMatrix();
 }

void drawFebruary(){
    fill(255,0,0);
    noStroke();
    beginShape();
    vertex(300,100);
    bezierVertex( 300,70, 250,70, 250,100);
    bezierVertex( 250,120, 300,125, 300,150 );
    bezierVertex( 300,125, 350,120, 350,100 );  
    bezierVertex( 350,70, 300,70, 300,100 );  
    endShape();
}

void drawMarch(){
  fill(3,142,20);
  strokeWeight(3);
  stroke(3,142,20);
  arc(500,140,7,40,0,TWO_PI,CHORD);
  strokeWeight(30);
  pushMatrix();
  translate(500,100);
  for(int i = 0; i<10; i++){
  rotate(TWO_PI/4);
  line(0,0,25,25);
  }
  popMatrix();
}

void drawApril(){
    //egg
    fill(252,199,250);
    noStroke();
    strokeWeight(3);
    beginShape();
    vertex(660, 100);
    bezierVertex(660,100, 700,-25, 740,100);
    bezierVertex(740,100, 700,200, 660,100);
    endShape();
    
    //zigzag stripe
    fill(random(100,255),random(100,255), random(100,255));
    beginShape();
    vertex(660,100);
    vertex(662,95);
    vertex(675,85);
    vertex(690,95);
    vertex(702,85);
    vertex(715,95);
    vertex(727,85);
    vertex(737,95);
    vertex(740,100);
    vertex(735,110);
    vertex(727,100);
    vertex(715,110);
    vertex(702,100);
    vertex(690,110);
    vertex(675,100);
    vertex(664,110);
    endShape(CLOSE);
}

void drawMay(){
  pushMatrix();
    translate(100,300);
    for(int i =0; i<10; i++){
      rotate(TWO_PI/7);
      strokeWeight(30);
      stroke(200,112,247);
      line(0,0,45,0);
  }
  fill(255,224,98);
  stroke(255,214,3);
  ellipse(0,0,20,20);
  popMatrix();
}

void drawJune(){
    //ball
    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(300,310,100,100);
    
    //green stripe
    noStroke();
    fill(32,201,62);
    beginShape();
    vertex(320,290);
    vertex(300,260);
    vertex(285,262);
    vertex(269,270);
    vertex(310,295);
    endShape(CLOSE);
    
    //blue stripe
    fill(36,57,234);
    beginShape();
    vertex(310,305);
    vertex(253,330);
    vertex(264,346);
    vertex(282,358);
    vertex(300,360);
    vertex(320,310);
    endShape(CLOSE);
    
    //yellow stripe
    fill(255,247,3);
    beginShape();
    vertex(330,300);
    vertex(350,310);
    vertex(346,330);
    vertex(325,310);
    endShape(CLOSE);
    
    //center red circle
    fill(255,0,0);
    ellipse(320,300,20,20);
}

void drawJuly(){
  //adapted from https://forum.processing.org/two/discussion/10175/drawing-watermelons-in-a-repeating-pattern
   stroke(3,142,20);
   arc(-120,-120, 150, 155, 0, PI);  
   strokeWeight(5); 
   
   pushMatrix();
   translate(500,300);
   fill(252,74,98);
   beginShape(); 
   arc(0, 0, 80, 90, 0, PI);
   endShape();
   popMatrix();
   
   //seeds
   stroke(0);
   ellipse(500,310,5,5);
   ellipse(520,310,5,5);
   ellipse(480,310,5,5);
   ellipse(510,325,5,5);
   ellipse(490,325,5,5);
}

void drawAugust(){
    pushMatrix();
    translate(700,300);
    for(int i =0; i<10; i++){
      rotate(TWO_PI/10);
      strokeWeight(7);
      stroke(255,200,0);
      line(0,0,45,0);
    }
  fill(255,224,98);
  strokeWeight(2);
  ellipse(0,0,50,50);
  popMatrix();
}

void drawSeptember(){
  stroke(170,44,2);
  strokeWeight(3);
  fill(170,44,2);
  beginShape();
  vertex(95,580);
  vertex(95,560);
  vertex(50,560);
  vertex(75,545);
  vertex(30,530);
  vertex(55,525);
  vertex(30,505);
  vertex(65,515);
  vertex(60,500);
  vertex(80,520);
  vertex(75,470);
  vertex(90,505);
  vertex(100,445);
  vertex(110,505);
  vertex(125,470);
  vertex(120,520);
  vertex(140,500);
  vertex(135,515);
  vertex(170,505);
  vertex(145,525);
  vertex(170,530);
  vertex(125,545);
  vertex(150,560);
  vertex(105,560);
  vertex(105,580);
  endShape(CLOSE);
}

void drawOctober(){
  //pumpkin
  fill(255,133,3);
  stroke(255,133,3);
  ellipse(300,510,120,100);
  
  //eyes and nose
  fill(0);
  triangle(265,500,280,475,295,500);
  triangle(305,500,320,475,335,500);
  triangle(285,520,300,500,315,520);
  
  //mouth
  arc(300,530,50,50,0,PI,OPEN);
  fill(255,133,3);
  rect(297,550,5,10);
  rect(287,522,5,10);
  rect(307,522,5,10);
  
  //stem
  noStroke();
  fill(44,80,47);
  rect(290,450,20,25,7);
}

void drawNovember(){
  //hat
  fill(46,9,11);
  stroke(46,9,11);
  ellipse(500,545,150,50);
  beginShape();
  vertex(470,470);
  vertex(530,470);
  vertex(550,530);
  vertex(450,530);
  endShape(CLOSE);
  
  //blue ribbon on hat
  fill(42,147,160);
  stroke(42,147,160);
  arc(500,525,100,25,0,PI,CHORD);
  
  //buckle
  fill(234,212,5);
  stroke(234,212,5);
  line(490,515,510,515);
  line(510,515,510,547);
  line(510,547,490,547);
  line(490,547,490,515);
}

void drawDecember(){
  //tree
  fill(8,72,19);
  stroke(8,72,19);
  strokeWeight(4);
  triangle(630,550,700,500,770,550);
  triangle(640,520,700,470,760,520);
  triangle(660,490,700,450,740,490);
  
  //tree trunck
  fill(46,9,11);
  stroke(46,9,11);
  rect(695,554,10,20);
  
  //red ornaments
  fill(255,0,0);
  stroke(255,0,0);
  ellipse(685,505,15,15);
  ellipse(720,505,15,15);
  
  //yellow ornaments
  fill(242,223,2);
  stroke(242,223,2);
  ellipse(730,535,15,15);
  ellipse(675,535,15,15);
  ellipse(700,475,15,14);
}