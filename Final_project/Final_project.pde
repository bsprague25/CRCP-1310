//Bailey Sprague

int rows = 3;
int cols = 4;
float monthSize = 200;

Month[][] calendar = new Month[rows][cols];

void setup() {
  size(800,600);
  for( int i = 0; i<rows; i++){
    for(int j = 0; j<cols; j++){
      if( rows <= 1 && cols <= 1){
        calendar[i][j] = new January();
      }else{
      calendar[i][j] = new Month(j*monthSize, i*monthSize, monthSize);
      calendar[i][j].drawMonth();
      }
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
  
}