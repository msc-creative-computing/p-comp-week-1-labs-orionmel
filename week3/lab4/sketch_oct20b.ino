int redPin = 3;
int greenPin = 4;
int bluePin = 5;

int c = 0;

void setup()
{
  Serial.begin(9600);  //比特率设置为一致方可通信
  pinMode(redPin,OUTPUT);
  pinMode(greenPin,OUTPUT);
  pinMode(bluePin,OUTPUT);
}

void loop()
{
  if(Serial.available());
  c = Serial.read();
  if (c == 97)  //a的ASCII码值为97
  {
    digitalWrite(redPin,HIGH);   
    delay(10);
    digitalWrite(redPin,LOW); 
  }
  if (c == 98)  //b的ASCII码值为98
  {
    digitalWrite(greenPin,HIGH);   
    delay(10);
    digitalWrite(greenPin,LOW);    
  }
  if (c == 99)  
  {
    digitalWrite(bluePin,HIGH);   
    delay(10);
    digitalWrite(bluePin,LOW);
  }
}
