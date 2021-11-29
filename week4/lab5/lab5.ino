#include <ReadPin.h>
const int led1 = 3;
const int pinA = 2;
ReadPin read;
boolean state=false;

void setup(){
  pinMode(led1, OUTPUT);
  pinMode(pinA, OUTPUT);
 
}

void loop(){

  if(read.readCapacitivePin(pinA) >1){
 
     delay(100);
  state=! state;
  digitalWrite(led1,state);    

    }
   
  } 
  
