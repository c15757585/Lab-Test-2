float l1 [] = new float [2];
float l2 [] = new float [2]; 
float l3 [] = new float [2]; 
float l4 [] = new float [2]; 
float l5 [] = new float [2];
float plane [] = new float [2];
float speed = 4; 
float theta;

int lane1 = 100;
int lane2 = 150; 
int lane3 = 200; 
int lane4 = 250; 
int lane5 = 270; 
int plane1 = 30;
int bomb;
 
int playerX = 400;
int playerY = 450;

int w = 30;
int h = 20;
void setup()
{
  frameRate(60);
  size(500, 700);
  background(0);
  
  //initial values of clouds
  l1[0]=0; 
  l2[0]=300; 
  l3[0]=500; 
  l4[0]=200; 
  l5[0]=550;
  plane[0]=800;
  strokeWeight(.5);
  rectMode(CENTER);
  
  //space between clouds
    for (int a = 1; a < l1.length; a++)
    {
      l1[a]= l1[a-1]-random(50, 150); 
      l2[a]= l2[a-1]-random(50, 150); 
      l3[a]= l3[a-1]-random(50, 150); 
      l4[a]= l4[a-1]-random(50, 150); 
      l5[a]= l5[a-1]-random(50, 150); 
    }
}
 
void draw() 
{
  background(0);
  
  //speed for clouds
   for (int a=1; a < l1.length; a++) {

    l1[a] = l1[a]+random(speed);
    l3[a] = l3[a]+random(speed);
    l4[a] = l4[a]+random(speed);
    l2[a] = l2[a]+random(speed);
    l5[a] = l5[a]+random(speed);
    plane[a] = plane[a]+speed;
    
    //sky
    fill(10, 100, 255);
    rect(350, 100, height, width);
  
    //grass
    fill(125, 220, 125);
    rect(350, 600, height, width);
    
    //drawing clouds
    fill(255);
    noStroke();
    
    //cloud 1
    ellipse(l1[a], lane1, w, h);
    ellipse(l1[a]+20, lane1, w+10, h+10);
    ellipse(l1[a]+40, lane1, w, h);
    
    //cloud 2
    ellipse(l2[a], lane2, w, h);
    ellipse(l2[a]+20, lane2, w+10, h+10);
    ellipse(l2[a]+40, lane2, w, h);
    
    //cloud 3
    ellipse(l3[a], lane3, w, h);
    ellipse(l3[a]+20, lane3, w+10, h+10);
    ellipse(l3[a]+40, lane3, w, h);
    
    //cloud 4
    ellipse(l4[a], lane4, w, h);
    ellipse(l4[a]+20, lane4, w+10, h+10);
    ellipse(l4[a]+40, lane4, w, h);
    
    //cloud 5
    ellipse(l5[a], lane5, w, h);
    ellipse(l5[a]+20, lane5, w+10, h+10);
    ellipse(l5[a]+40, lane5, w, h);
    
   //plane
   fill(150);
   rect(plane[a], plane1, w-10, h-90);
   rect(plane[a], plane1, w+30, h+5);
   
   //User controlled Square
  fill(255, 255, 125);
  rect(playerX, playerY, h, h);
 
    //Reseting the clouds and plane
     if (plane[a]>width+50) {
      plane[a] = plane[a]+ -1200;
    }
    if (l1[a]>width+50) {
      l1[a] = l1[a]+random(-870, -1400);
    }

    if (l2[a]>width+80) {
      l2[a] = l2[a]+random(-900, -1400);
    }

    if (l3[a]>width+50) {
      l3[a] = l3[a]+random(-870, -1400);
    }

    if (l4[a]>width+90) {
      l4[a] = l4[a]+random(-900, -1400);
    }
   
    if (l5[a]>width+50) {
      l5[a] = l5[a]+random(-800, -1400);
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

    
void checkCollision()
{

}



