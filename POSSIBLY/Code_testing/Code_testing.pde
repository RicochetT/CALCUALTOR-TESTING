void setup() {
  size(700, 500); // Size of canvas
  background(100, 10, 100); // Background color as rgb values
}

void draw() {
  background(100,10,100);
int ran = int(random(0,475));

fill(255,255,255);
textSize(58);
text(ran,500,300);

  
for (int s = 1; s < 400; s = s + 1) { 
  rect(20,20,350,ran);
  delay(2);
}
 loop();

}