void setup() {
  size(500, 500); // Size of canvas
  background(100, 10, 100); // Background color as rgb values
  
    

String [] q = loadStrings("Q.txt");
String [] Eq = (split(q[0], ' '));
float [] A = float(split(q[0], ' '));
int Length = Eq.length - 1;
// println(Length);

String E = Eq[1];
float Num1 = A[0];
float Num2 = A[2];



//if operator is +
if (E.equals("+")) { 
  float X = (Num1 + Num2); 
  if (Length > 2) { // This is if there's another operator after "+"
    float Num3 = A[4];
    String E2 = Eq[3];
    
    if (E2.equals("+")) { X = (Num1 + Num2 + Num3); }
    else if (E2.equals("*")) { X = (Num1 + Num2 * Num3);}
    else if (E2.equals("-")) { X = (Num1 + Num2 - Num3);}
    else if (E2.equals("/")) { X = (Num1 + Num2 / Num3);} //<>//
  }
  fill(255,255,255);
  textSize(35);
  text(X, 100,200);
  delay(1000);
}

  
 // if opertator is *
if (E.equals("*")){
float X = (Num1 * Num2); 
  if (Length > 2) { // This is if there's another operator after "*"
   float Num3 = A[4];
   String E2 = Eq[3];
    
    if (E2.equals("+")) { X = (Num1 * Num2 + Num3); }
    else if (E2.equals("*")) { X = (Num1 * Num2 * Num3);}
    else if (E2.equals("-")) { X = (Num1 * Num2 - Num3);}
    else if (E2.equals("/")) { X = (Num1 * Num2 / Num3);}
  }
  fill(255,255,255);
  textSize(35);
  text(X, 100,200);
  delay(1000);
}
// If opertator is -
if (E.equals("-")){
float X = (Num1 - Num2); 
  if (Length > 2) { // This is if there's another operator after "-"
    float Num3 = A[4];
    String E2 = Eq[3];
    
    if (E2.equals("+")) { X = (Num1 - Num2 + Num3); }
    else if (E2.equals("*")) { X = (Num1 - Num2 * Num3);}
    else if (E2.equals("-")) { X = (Num1 - Num2 - Num3);}
    else if (E2.equals("/")) { X = (Num1 - Num2 / Num3);}
  }
  fill(255,255,255);
  textSize(35);
  text(X, 100,200);
  delay(1000);
}
//if operator is /
if (E.equals("/")){
float X = (Num1 / Num2); 
  if (Length > 2) { // This is if there's another operator after "/"
    float Num3 = A[4];
    String E2 = Eq[3];
    
    if (E2.equals("+")) { X = (Num1 / Num2 + Num3); }
    else if (E2.equals("*")) { X = (Num1 / Num2 * Num3);}
    else if (E2.equals("-")) { X = (Num1 / Num2 - Num3);}
    else if (E2.equals("/")) { X = (Num1 / Num2 / Num3);}
  }
  fill(255,255,255);
  textSize(35);
  text(X, 100,200);
  delay(1000);
}

}

void draw() {



  
  
  
  
  
  
  
}