// C++ code
//
int pin = A0; 
int sensorValue = 0; 
void setup()
{
 Serial.begin(9600); 
}

void loop()
{
  sensorValue = analogRead(pin); 
  Serial.println(sensorValue); 
  
}
