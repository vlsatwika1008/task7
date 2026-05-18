<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %> 
<!DOCTYPE html> 
<html> 
<head> 
<title>Arithmetic Operations</title> 
</head> 
<body> 
<h2>Perform Arithmetic Operations</h2> 
<form action="arithmetic.jsp" method="post"> 
<label>Number 1: </label> 
<input type="text" name="num1" required><br><br> 
<label>Number 2: </label> 
<input type="text" name="num2" required><br><br> 
<label>Operation: </label> 
<select name="operation"> 
<option value="add">Addition (+)</option> 
<option value="subtract">Subtraction (-)</option> 
<option value="multiply">Multiplication (*)</option> 
<option value="divide">Division (/)</option> 
</select><br><br> 
<input type="submit" value="Calculate"> 
</form> 
</body> 
</html>
