bool universe = 0;
void setup() {
  Serial.begin(9600);

}

void loop() {
  if(universe == 0){
    delay(1000);
    Serial.println("Guess the number i'm thinking");
    universe = 1;
    }

    if(Serial.available()){
      int num =Serial.parseInt();
      int randNumber = random(0, 10);
       if(num != randNumber){
        Serial.println("sorry ,it's wrong!");
        }
        else{
          Serial.println("aha,it's right!");
          }
      }

}
