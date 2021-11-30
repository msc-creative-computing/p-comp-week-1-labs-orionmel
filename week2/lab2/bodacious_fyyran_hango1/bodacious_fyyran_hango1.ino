// C++ code
//
void setup()
{
  pinMode(2, INPUT);
  Serial.begin(9600);

  pinMode(LED_BUILTIN, OUTPUT);
}

void loop()
{
  Serial.println(digitalRead(2));
  if (digitalRead(2) == 1) {
    digitalWrite(LED_BUILTIN, HIGH);
  } else {
    digitalWrite(LED_BUILTIN, LOW);
  }
  delay(10); // Delay a little bit to improve simulation performance
}