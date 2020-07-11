void main() {
  TRISC=0B00000000;
  TRISD=0B11111111;
  for(;;)
  {
 if(portd.f0==1&&portd.f1==1)
  { portc=0B00000011;}
   if(portd.f0==1&&portd.f1==0)
  { portc=0B00000010;}
   if(portd.f0==0&&portd.f1==1)
  { portc=0B00000001;}
   if(portd.f0==0&&portd.f1==0)
   { portc=0B00000000;}
   }
}