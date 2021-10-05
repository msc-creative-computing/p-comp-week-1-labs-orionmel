// C++ code
//
int led = 0;

void setup()
{
  pinMode(A0, INPUT);
  Serial.begin(9600);

  pinMode(7, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(2, OUTPUT);
}

void loop()
{
  Serial.println(-40 + 0.488155 * (analogRead(A0) - 20));
  if (-40 + 0.488155 * (analogRead(A0) - 20) > 25) {
    digitalWrite(7, HIGH);
    digitalWrite(5, HIGH);
    digitalWrite(2, HIGH);
    delay(10000); // Wait for 10000 millisecond(s)
    if (-40 + 0.488155 * (analogRead(A0) - 20) < 25) {
      digitalWrite(7, LOW);
      digitalWrite(5, HIGH);
      digitalWrite(2, HIGH);
      delay(10000); // Wait for 10000 millisecond(s)
    }
  } else {
    if (-40 + 0.488155 * (analogRead(A0) - 20) < 5) {
      digitalWrite(5, LOW);
      digitalWrite(7, LOW);
      digitalWrite(2, HIGH);
      delay(30000); // Wait for 30000 millisecond(s)
    }
  }
}