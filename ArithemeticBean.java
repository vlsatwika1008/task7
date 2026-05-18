//  javac -d . ArithmeticBean.java
package beans; 
public class ArithmeticBean { 
private double num1; 
private double num2; 
private double result; 
private String operation; 
// Getters and Setters 
public double getNum1() { return num1; } 
public void setNum1(double num1) { this.num1 = num1; } 
public double getNum2() { return num2; } 
public void setNum2(double num2) { this.num2 = num2; } 
public String getOperation() { return operation; } 
public void setOperation(String operation) { this.operation = operation; } 
public double getResult() { return result; } 
public void calculate() { 
switch (operation) { 
case "add": result = num1 + num2; break; 
case "subtract": result = num1 - num2; break; 
case "multiply": result = num1 * num2; break; 
case "divide": 
if (num2 != 0) result = num1 / num2; 
else result = Double.NaN; // Handle divide by zero 
break; 
default: result = 0; 
} 
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


//lab
// Note: Ensure that your project directory structure is something like this: 
// MyArithmeticApp/ 
// ├── WEB-INF/ 
// │ ├── classes/ 
// │ │ └── beans/ 
// │ │  
// └── ArithmeticBean.class 
// │ ├ 
// │ └── web.xml 
// └── index.jsp 
// └── arithmetic.jsp 

// Go to CMD and COMPILE ArithmeticBean.java file there .class file will 
// automatically creates 
// C:\Users\HP\Desktop\fswd_25\FSWD_gr25_tasks\MyArithmeticApp\WEB
// INF\classes\beans>javac ArithmeticBean.java 
// OUTPUT: 
// http://localhost:8080/MyArithmeticApp/index.jsp
