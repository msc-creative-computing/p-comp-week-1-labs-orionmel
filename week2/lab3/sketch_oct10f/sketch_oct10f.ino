const int LIGHT_PIN = A0; // Pin connected to voltage divider output
const int LED_PIN = 13; // Use built-in LED as dark indicator   内置引脚

// Measure the voltage at 5V and the actual resistance of your
// 47k resistor, and enter them below:
const float VCC = 4.98; // Measured voltage of Ardunio 5V line
const float R_DIV = 4660.0; // Measured resistance of 3.3k resistor

// Set this to the minimum resistance require to turn an LED on:
const float DARK_THRESHOLD = 10000.0;

void setup() 
{
  Serial.begin(9600);
  pinMode(LIGHT_PIN, INPUT);
  pinMode(LED_PIN, OUTPUT);
}

void loop() 
{
  // Read the ADC, and calculate voltage and resistance from it 0-1023
  int lightADC = analogRead(LIGHT_PIN);
  if (lightADC > 0)
  {
    // Use the ADC reading to calculate voltage and resistance
    float lightV = lightADC * VCC / 1023.0;  
    float lightR = R_DIV * (VCC / lightV - 1.0); 
    Serial.println("Voltage: " + String(lightV) + " V");
    Serial.println("Resistance: " + String(lightR) + " ohms");

    // If resistance of photocell is greater than the dark
    // threshold setting, turn the LED on.
    if (lightR >= DARK_THRESHOLD)
      digitalWrite(LED_PIN, HIGH);
    else
      digitalWrite(LED_PIN, LOW);

    Serial.println();
    delay(500);
  }
}
