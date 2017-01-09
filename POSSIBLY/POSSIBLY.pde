void setup() { //<>//
  size(500, 500); // Size of canvas
  background(100, 10, 100); // Background color as rgb values
  
    

String [] q = loadStrings("Q.txt");
String [] Eq = (split(q[0], ' '));
float [] A = float(split(q[0], ' '));
int Length = Eq.length - 1;
println(Length);

String E = Eq[1];
float Num1 = A[0];
float Num2 = A[2];

float X2 = 0;

// If opertator is +
if (E.equals("+")){
float X = (Num1 + Num2);

  if (Length > 2) { // This is if there's another operator after "-"
    float Num3 = A[4];
    String E2 = Eq[3];
    
        //======================================================
    if (E2.equals("+")) { X = (Num1 + Num2 + Num3); 
      if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
        // This is if theres a 3rd operator.
      // Make a X2 variable and if statment if legnth is greater then 4
           if (E3.equals("+")) { X2 = (Num1 + Num2 + Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 + Num2 + Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 + Num2 + Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 + Num2 + Num3 / Num4);}
      }
  }
    //======================================================
    else if (E2.equals("*")) { X = (Num1 + Num2 * Num3);
    if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
      if (E3.equals("+")) { X2 = (Num1 + Num2 * Num3 + Num4);}
     else if (E3.equals("*")) { X2 = (Num1 + Num2 * Num3 * Num4);}
     else if (E3.equals("-")) { X2 = (Num1 + Num2 * Num3 - Num4);}
     else if (E3.equals("/")) { X2 = (Num1 + Num2 * Num3 / Num4);}
      }
    }//Rember to fix the code
     //======================================================
    else if (E2.equals("-")) { X = (Num1 + Num2 - Num3);
    if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 + Num2 - Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 + Num2 - Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 + Num2 - Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 + Num2 - Num3 / Num4);} 

    }
  }
    //==========================================
    else if (E2.equals("/")) { X = (Num1 + Num2 / Num3);
    if (Length > 4){ 
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 + Num2 / Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 + Num2 / Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 + Num2 / Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 + Num2 / Num3 / Num4);} 
      print(X2);
    }
  }
} //<>//
if (Length > 4){fill(255,255,255);
  textSize(35);
  text(X2, 100,200);
delay(1000);
} else { fill(255,255,255);
  textSize(35);
  text(X, 100,250);
  delay(1000);
}
}
  
// If opertator is *
if (E.equals("*")){
float X = (Num1 - Num2); 
  if (Length > 2) { // This is if there's another operator after "-"
    float Num3 = A[4];
    String E2 = Eq[3];

        //======================================================
    if (E2.equals("+")) { X = (Num1 * Num2 + Num3); 
      if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
    // This is if theres a 3rd operator.
      // Make a X2 variable and if statment if legnth is greater then 4
           if (E3.equals("+")) { X2 = (Num1 * Num2 + Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 * Num2 + Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 * Num2 + Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 * Num2 + Num3 / Num4);}
      }
  }
    //======================================================
    else if (E2.equals("*")) { X = (Num1 - Num2 * Num3);
    if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
      if (E3.equals("+")) { X2 = (Num1 * Num2 * Num3 + Num4);}
     else if (E3.equals("*")) { X2 = (Num1 * Num2 * Num3 * Num4);}
     else if (E3.equals("-")) { X2 = (Num1 * Num2 * Num3 - Num4);}
     else if (E3.equals("/")) { X2 = (Num1 * Num2 * Num3 / Num4);}
      }
    }//Rember to fix the code
     //======================================================
    else if (E2.equals("-")) { X = (Num1 * Num2 - Num3);
    if (Length > 4){
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 * Num2 - Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 * Num2 - Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 * Num2 - Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 * Num2 - Num3 / Num4);} 

    }
  }
    //==========================================
    else if (E2.equals("/")) { X = (Num1 * Num2 / Num3);
    if (Length > 4){ 
    float Num4 = A[6];
    String E3 = Eq[5];
      // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 * Num2 / Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 * Num2 / Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 * Num2 / Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 * Num2 / Num3 / Num4);} 
      print(X2);
    }
  }
  println(X);
}
  if (Length > 4){fill(255,255,255);
  textSize(35);
  text(X2, 100,200);
  delay(1000);
} else { fill(255,255,255);
  textSize(35);
  text(X, 100,250);
  delay(1000);
}
}
// If opertator is -
if (E.equals("-")){
float X = (Num1 - Num2);
  if (Length > 2) { // This is if there's another operator after "-"
    float Num3 = A[4];
    String E2 = Eq[3];
    float Num4 = A[6];
    String E3 = Eq[5];
        //======================================================
    if (E2.equals("+")) { X = (Num1 - Num2 + Num3); 
      if (Length > 4){ // This is if theres a 3rd operator.
      // Make a X2 variable and if statment if legnth is greater then 4
           if (E3.equals("+")) { X2 = (Num1 - Num2 + Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 - Num2 + Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 - Num2 + Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 - Num2 + Num3 / Num4);}
      }
  }
    //======================================================
    else if (E2.equals("*")) { X = (Num1 - Num2 * Num3);
    if (Length > 4){
      // This is if theres a 3rd operator.
      if (E3.equals("+")) { X2 = (Num1 - Num2 * Num3 + Num4);}
     else if (E3.equals("*")) { X2 = (Num1 - Num2 * Num3 * Num4);}
     else if (E3.equals("-")) { X2 = (Num1 - Num2 * Num3 - Num4);}
     else if (E3.equals("/")) { X2 = (Num1 - Num2 * Num3 / Num4);}
      }
    }//Rember to fix the code
     //======================================================
    else if (E2.equals("-")) { X = (Num1 - Num2 - Num3);
    if (Length > 4){ // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 - Num2 - Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 - Num2 - Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 - Num2 - Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 - Num2 - Num3 / Num4);} 

    }
  }
    //==========================================
    else if (E2.equals("/")) { X = (Num1 - Num2 / Num3);
    if (Length > 4){ // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 - Num2 / Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 - Num2 / Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 - Num2 / Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 - Num2 / Num3 / Num4);} 
print(X2);
      }
    }
  if (Length > 2){fill(255,255,255);
  textSize(35);
  text(X2, 100,200);
  delay(1000);
} else { fill(255,255,255);
  textSize(35);
  text(X, 100,250);
  delay(1000);
    }
  }
}


// If opertator is /
if (E.equals("/")){
float X = (Num1 / Num2); 
print(X);
  if (Length > 2) { // This is if there's another operator after "-"
    float Num3 = A[4];
    String E2 = Eq[3];
    float Num4 = A[6];
    String E3 = Eq[5];
        //======================================================
    if (E2.equals("+")) { X = (Num1 / Num2 + Num3); 
      if (Length > 4){ // This is if theres a 3rd operator.
      // Make a X2 variable and if statment if legnth is greater then 4
           if (E3.equals("+")) { X2 = (Num1 / Num2 + Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 / Num2 + Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 / Num2 + Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 / Num2 + Num3 / Num4);}
      }
  }
    //======================================================
    else if (E2.equals("*")) { X = (Num1 / Num2 * Num3);
    if (Length > 4){
      // This is if theres a 3rd operator.
      if (E3.equals("+")) { X2 = (Num1 / Num2 * Num3 + Num4);}
     else if (E3.equals("*")) { X2 = (Num1 / Num2 * Num3 * Num4);}
     else if (E3.equals("-")) { X2 = (Num1 / Num2 * Num3 - Num4);}
     else if (E3.equals("/")) { X2 = (Num1 / Num2 * Num3 / Num4);}
      }
    }//Rember to fix the code
     //======================================================
    else if (E2.equals("-")) { X = (Num1 / Num2 - Num3);
    if (Length > 4){ // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 / Num2 - Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 / Num2 - Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 / Num2 - Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 / Num2 - Num3 / Num4);} 

    }
  }
    //==========================================
    else if (E2.equals("/")) { X = (Num1 / Num2 / Num3);
    if (Length > 4){ // This is if theres a 3rd operator.
           if (E3.equals("+")) { X2 = (Num1 / Num2 / Num3 + Num4);}
      else if (E3.equals("*")) { X2 = (Num1 / Num2 / Num3 * Num4);}
      else if (E3.equals("-")) { X2 = (Num1 / Num2 / Num3 - Num4);}
      else if (E3.equals("/")) { X2 = (Num1 / Num2 / Num3 / Num4);} 
      print(X2);} }
                }
                
  if (Length > 2){fill(255,255,255);
  textSize(35);
  text(X2, 100,200);
  delay(1000);
} else { fill(255,255,255);
  textSize(35);
  text(X, 100,250);
  delay(1000);
    } 
  }
}