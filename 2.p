#define ledR 12

int interrCount = 0 ; 

void setup()
{
  pinMode(ledR , OUTPUT);
  

  digitalWrite(ledR , 0); 
  

  attachInterrupt(0 , interruptChange ,RISING);

}

void loop()
{
  interrCount++; 

  digitalWrite(ledR,1);
  digitalWrite(ledR ,0);

  delay(300);

  if(interrCount == 10)
  {
    interrCount = 0; 
    digitalWrite(ledR , 0);
  }
}

void interruptChange()
{
  digitalWrite(ledR ,1);
}
