float l1 [] = new float [2];
float l2 [] = new float [2]; 
float l3 [] = new float [2]; 
float l4 [] = new float [2]; 
float speed = 4; 

int lane1 = 100;
int lane2 = 150; 
int lane3 = 200; 
int lane4 = 250; 

int playerX = 400;
int playerY = 450;

int w = 30;
int h = 20;
void setup()
{
  size(500, 700);
  background(0);
  
  //initial values of clouds
  l1[0]=800; 
  l2[0]=800; 
  l3[0]=800; 
  l4[0]=800; 
  strokeWeight(.5);
  rectMode(CENTER);
  
  //space between clouds
    for (int a = 1; a < l1.length; a++) {
    l1[a]= l1[a-1]-random(50, 150); 
    l2[a]= l2[a-1]-random(50, 150); 
    l3[a]= l3[a-1]-random(50, 150); 
    l4[a]= l4[a-1]-random(50, 150); 
}
}

void draw() 
{
  background(0);
  
  //speed for clouds
   for (int a=1; a < l1.length; a++) {

    l1[a] = l1[a]+speed;
    l3[a] = l3[a]+speed;
    l4[a] = l4[a]-speed;
    l2[a] = l2[a]-speed;
    
    //sky
    fill(10, 10, 255);
    rect(350, 100, height, width);
  
    //grass
    fill(125, 220, 125);
    rect(350, 600, height, width);
    
    //drawing clouds
    rect(l1[a], lane1, w, h);
    rect(l2[a], lane2, w, h);
    rect(l3[a], lane3, w, h);
    rect(l4[a], lane4, w, h);
   
 
    
    //Reseting the cars
    if (l1[a]>width+50) {
      l1[a] = l1[a]+random(-870, -1400);
    }

    if (l2[a]<-50) {
      l2[a] = l2[a]+random(900, 1400);
    }

    if (l3[a]>width+50) {
      l3[a] = l3[a]+random(-870, -1400);
    }

    if (l4[a]<-50) {
      l4[a] = l4[a]+random(900, 1400);
    }
   }
      //User controlled character
  if (keyPressed) {
    if (key==CODED) {
      if (keyCode==RIGHT)
        playerX = playerX + 3;
      if (keyCode==LEFT)
        playerX = playerX - 3;
      if (keyCode==DOWN)
        playerY = playerY + 3;
      if (keyCode==UP) 
        playerY = playerY - 3;
    }
  }

}
