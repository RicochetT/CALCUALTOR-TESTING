void setup() {
  size(500, 500); // Size of canvas
  background(100, 10, 100); // Background color as rgb values
  
    

String [] q = loadStrings("Q.txt");
String [] Eq = (split(q[0], ' '));
 float [] A = float(split(q[0], ' '));
int Length = Eq.length - 1;
println(Length);

  
if (Eq[Length].equals(null)){ print("There is no third operator!"); }
else{ print("Detected an extra operator/variable!"); }

String E = Eq[1];
float Num1 = A[0];
float Num2 = A[2];





//if operator is +
if (E.equals("+")) {
  float X = (Num1 + Num2); //<>//
  fill(255,255,255);

  textSize(35);
  text(X, 100,300);

  delay(2000);
} // if opertator is *
if (E.equals("*")) {
  float X = (Num1 * Num2);
  fill(255,255,255);

  textSize(35);
  text(X, 100,300);

  delay(2000);
}
// If opertator is -
if (E.equals("-")) {
  float X = (Num1 - Num2);
  fill(255,255,255);

  textSize(35);
  text(X, 100,300);

  delay(2000);
}
//if operator is /
if (E.equals("/")) {
  float X = (Num1 / Num2);
  fill(255,255,255);

  textSize(35);
  text(X, 100,300);

  delay(2000);
}


print();

}









void draw() {



  
  
  
  
  
  
  
}