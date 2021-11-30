import processing.serial.*;
Serial port;

float box;
float circleX;
float car;

void setup() {
  String portName = Serial.list()[3];
  port=new Serial(this,portName,9600); 
  size(600, 600);
  noStroke();
  circleX = 0;

}

void draw() {
//background(0, 100, 150);
circleX = circleX + 1;
car = car + 2;

  if (circleX >= width) {
    circleX = 0;
    }


  background(0);

  
  if (car >= width+100) {
    car = 0;
  }

//keyboard
 if(keyPressed&&(key==CODED)){
   if(keyCode == LEFT){
     println("red");
     background(221,160,221);
     port.write("a");
   }
   else if(keyCode == RIGHT){
     println("green");
     background(0,201,87);
    port.write("b");
   }
   else if(keyCode == DOWN){
     println("blue");
      background(65,105,225);
     port.write("c");
   }
 }

//SUN
     fill(255);
     ellipse(450, 100, 100, 100);



//BUILDINGS
fill(0, 80);
rect(0, 290, 100, 200);
rect(120, 200, 100, 300);

rect(160, 150, 3, 50);

rect(410, 350, 200, 300);
rect(520, 300, 100, 50);

//WINDOWS FIRST BUILDING
fill(#FFF4D1, 70);
rect(10, 310, 10, 10);
rect(30, 330, 10, 10);
rect(10, 330, 10, 10);
rect(70, 330, 10, 10);
rect(70, 350, 10, 10);
rect(10, 410, 10, 10);
rect(10, 390, 10, 10);
rect(50, 390, 10, 10);

//WINDOWS BUILDING 2
rect(130, 220, 10, 10);
rect(170, 220, 10, 10);
rect(190, 220, 10, 10);
rect(190, 240, 10, 10);
rect(190, 260, 10, 10);
rect(170, 260, 10, 10);
rect(130, 260, 10, 10);
rect(170, 280, 10, 10);
rect(150, 280, 10, 10);
rect(190, 300, 10, 10);
rect(150, 340, 10, 10);
rect(130, 340, 10, 10);
rect(130, 360, 10, 10);
rect(170, 360, 10, 10);
rect(190, 420, 10, 10);
rect(150, 420, 10, 10);
rect(190, 400, 10, 10);
rect(170, 440, 10, 10);
rect(130, 470, 10, 10);
rect(150, 470, 10, 10);
rect(190, 470, 10, 10);

//WINDOWS BUILDING 3
rect(420, 370, 10, 10);
rect(440, 370, 10, 10);
rect(480, 370, 10, 10);
rect(500, 370, 10, 10);
rect(500, 390, 10, 10);
rect(460, 390, 10, 10);
rect(460, 410, 10, 10);
rect(480, 410, 10, 10);
rect(420, 410, 10, 10);
rect(500, 430, 10, 10);
rect(480, 430, 10, 10);
rect(420, 430, 10, 10);
rect(440, 470, 10, 10);
rect(420, 470, 10, 10);

//WINDOWS BUILDING 4
rect(530, 360, 10, 10);
rect(550, 340, 10, 10);
rect(530, 320, 10, 10);
rect(570, 320, 10, 10);
rect(550, 320, 10, 10);
rect(590, 380, 10, 10);
rect(590, 400, 10, 10);
rect(550, 380, 10, 10);
rect(530, 380, 10, 10);
rect(530, 420, 10, 10);
rect(550, 420, 10, 10);


//FILL GROUND
//fill(255);
fill(200, 250, 250);
rect(0, 500, 600, 200);


//GROUND
fill(0);
ellipse(0, 500, 200, 100);
ellipse(0, 500, 300, 50);
ellipse(300, 500, 70, 20);
ellipse(500, 500, 100, 40);
ellipse(450, 500, 100, 20);
ellipse(300, 500, 70, 20);
ellipse(580, 490, 170, 100);

//CAR
fill(0, 150);
rect(car, 440, 30, 10);
rect(car-100, 440, 30, 10);


//BRIDGE
fill(255, 150);
rect(0, 428, 600, 2);
fill(0);
quad(width/2+500, height/2+150, width/2+576, height/2+170, width/2-586, height/2+170, width/2-560, height/2+150);
rect(0, 430, 600, 5);
rect(20, 430, 5, 20);
rect(40, 430, 5, 20);
rect(60, 430, 5, 20);
rect(80, 430, 5, 20);
rect(100, 430, 5, 20);
rect(120, 430, 5, 20);
rect(140, 430, 5, 20);
rect(160, 430, 5, 20);
rect(180, 430, 5, 20);
rect(200, 430, 5, 20);
rect(220, 430, 5, 20);
rect(240, 430, 5, 20);
rect(260, 430, 5, 20);
rect(280, 430, 5, 20);
rect(300, 430, 5, 20);
rect(320, 430, 5, 20);
rect(340, 430, 5, 20);
rect(360, 430, 5, 20);
rect(380, 430, 5, 20);
rect(400, 430, 5, 20);
rect(420, 430, 5, 20);
rect(440, 430, 5, 20);
rect(460, 430, 5, 20);
rect(480, 430, 5, 20);
rect(500, 430, 5, 20);
rect(520, 430, 5, 20);
rect(540, 430, 5, 20);
rect(560, 430, 5, 20);
rect(580, 430, 5, 20);

//BRIDGE SHADOW
fill(0, 50);
rect(0, 505, 600, 10);

//REFLECTION
fill(100, 150);
rect(0, 500, 600, 200);

//SNOW
fill(255, 150);
ellipse(10, circleX, 10, 10);
ellipse(50, circleX+20, 10, 10);
ellipse(80, circleX, 5, 5);
ellipse(110, circleX+100, 5, 5);
ellipse(140, circleX+150, 10, 10);
ellipse(180, circleX-200, 10, 10);
ellipse(200, circleX-150, 5, 5);
ellipse(240, circleX-50, 5, 5);
ellipse(240, circleX, 10, 10);
ellipse(300, circleX+20, 5, 5);
ellipse(440, circleX, 10, 10);
ellipse(440, circleX, 10, 10);
ellipse(550, circleX+100, 10, 10);
ellipse(530, circleX-250, 10, 10);
ellipse(530, circleX-200, 5, 5);
ellipse(580, circleX-300, 5, 5);
ellipse(300, circleX-400, 5, 5);
ellipse(140, circleX-350, 5, 5);
ellipse(400, circleX-300, 5, 5);
ellipse(550, circleX, 5, 5);

fill(255);
ellipse(100, 630, 400, 100);
ellipse(0, 600, 350, 100);
fill(255, 150);
ellipse(370, 500, 100, 1);
ellipse(570, 510, 100, 1);
ellipse(140, 500, 100, 1);
ellipse(360, 550, 100, 3);
ellipse(400, 560, 50, 1);
ellipse(150, 530, 50, 1);
}
