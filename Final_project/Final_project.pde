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
}

void mousePressed(){
  
}