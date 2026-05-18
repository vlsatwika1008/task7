//  javac -d . ArithmeticBean.java

package beans;

import java.io.Serializable;

public class ArithmeticBean implements Serializable {
    private double result;

    public ArithmeticBean() {}

    // Method to perform calculation based on operation
    public void calculate(String operation, double num1, double num2) {
        if (operation == null) return;
        
        switch (operation.toLowerCase()) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    result = Double.NaN; // Handle division by zero
                }
                break;
            default:
                result = 0;
                break;
        }
    }

    public double getResult() {
        return result;
    }
}


// folder in xampp/tomcat/webapps
// MyArithmeticApp/
// ├── index.jsp                  <-- The frontend user interface
// └── WEB-INF/                   <-- Private directory (not accessible via URL)
//     ├── classes/               <-- Compiled Java bytecode
//     │   └── beans/             <-- Package folder for your Java classes
//     │       └── ArithmeticBean.class

// need to compile ArithmeticBean.java: in cmd after path use :--- javac -d . ArithmeticBean.java
// then place in beans delete .java file


// open with:http://localhost:8080/MyArithmeticApp/index.jsp


