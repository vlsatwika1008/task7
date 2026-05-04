
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.ArithmeticBean" %>
<html>
<head>
    <title>Arithmetic Operations</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { border: 1px solid #ccc; padding: 20px; width: 300px; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Arithmetic App</h2>
        <form method="post">
            Number 1: <input type="number" step="any" name="num1" required><br><br>
            Number 2: <input type="number" step="any" name="num2" required><br><br>
            Operation:
            <select name="operation">
                <option value="add">Add</option>
                <option value="subtract">Subtract</option>
                <option value="multiply">Multiply</option>
                <option value="divide">Divide</option>
            </select><br><br>
            <input type="submit" value="Calculate">
        </form>

        <hr>
        <%
            String num1Str = request.getParameter("num1");
            String num2Str = request.getParameter("num2");
            String operation = request.getParameter("operation");

            if (num1Str != null && num2Str != null && operation != null) {
                try {
                    double num1 = Double.parseDouble(num1Str);
                    double num2 = Double.parseDouble(num2Str);
                    
                    ArithmeticBean arithmeticBean = new ArithmeticBean();
                    arithmeticBean.calculate(operation, num1, num2);
                    
                    out.println("<h3>Result: " + arithmeticBean.getResult() + "</h3>");
                } catch (Exception e) {
                    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
                }
            }
        %>
    </div>
</body>
</html>

