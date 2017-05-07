//Bailey Sprague

int rows = 3;
int cols = 4;
float monthSize = 200;

Month[][] calendar = new Month[rows][cols];

void setup() {
  size(800,600);
  for( int i = 0; i<rows; i++){
    for(int j = 0; j<cols; j++){
      calendar[i][j] = new Month(j*monthSize, i*monthSize, monthSize);
      calendar[i][j].drawMonth();
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

    drawJanuary();
    drawFebruary();
    drawMarch();
    drawApril();
    drawMay();
    drawJune();
    drawJuly();
    drawAugust();
}

void mousePressed(){
  
}

void drawJanuary(){
    pushMatrix();
    translate(100,100);
    for(int i =0; i<10; i++){
      rotate(TWO_PI/6);
      strokeWeight(3);
      stroke(171,250,252);
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
    fill(0);
    frameRate(10);
    stroke(random(100,255),random(100,255), random(100,255));
    strokeWeight(30);
    beginShape();
    curveVertex(450,130);
    curveVertex(450,130);
    curveVertex(470,85);
    curveVertex(530,85);
    curveVertex(550,130);
    curveVertex(550,130);
    endShape(); 
}

void drawApril(){
    fill(252,199,250);
    noStroke();
    strokeWeight(3);
    beginShape();
    vertex(660, 100);
    bezierVertex(660,100, 700,-25, 740,100);
    bezierVertex(740,100, 700,200, 660,100);
    endShape();
    
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
    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(300,310,100,100);
    noStroke();
    fill(32,201,62);
    beginShape();
    vertex(320,290);
    vertex(300,260);
    vertex(285,262);
    vertex(269,270);
    vertex(310,295);
    endShape(CLOSE);
    
    fill(36,57,234);
    beginShape();
    vertex(310,305);
    vertex(253,330);
    vertex(264,346);
    vertex(282,358);
    vertex(300,360);
    vertex(320,310);
    endShape(CLOSE);
    
    fill(255,247,3);
    beginShape();
    vertex(330,300);
    vertex(350,310);
    vertex(346,330);
    vertex(325,310);
    endShape(CLOSE);
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
}

void drawAugust(){
    fill(255,224,98);
    pushMatrix();
    translate(700,300);
    for(int i =0; i<10; i++){
      rotate(TWO_PI/10);
      strokeWeight(7);
      stroke(255,224,98);
      line(0,0,45,0);
    }
  ellipse(0,0,50,50);
  popMatrix();
}