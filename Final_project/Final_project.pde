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
    
    stroke(109,244,250);
    line(100,60,100,160);
    line(150,80,50,140);
    line(50,80,150,140);
    line(115,70,100,80);
    line(85,70,100,80);
    line(115,150,100,140);
    line(85,150,100,140);
    
    fill(255,0,0);
    noStroke();
    beginShape();
    vertex(300,100);
    bezierVertex( 300,70, 250,70, 250,100);
    bezierVertex( 250,120, 300,125, 300,150 );
    bezierVertex( 300,125, 350,120, 350,100 );  
    bezierVertex( 350,70, 300,70, 300,100 );  
    endShape();
    
    fill(27,170,45);
    frameRate(10);
    beginShape();
    vertex(470,130);
    vertex(450,130);
    curveVertex(450,130);
    curveVertex(450,130);
    curveVertex(470,85);
    curveVertex(530,85);
    curveVertex(550,130);
    curveVertex(550,130);
    vertex(550,130);
    vertex(530,130);
    curveVertex(530,130);
    curveVertex(530,130);
    curveVertex(515,100);
    curveVertex(485,100);
    curveVertex(470,130);
    curveVertex(470,130);
    endShape(); 
    
    fill(252,199,250);
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

void mousePressed(){
  
}