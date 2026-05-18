<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %> 
<%@ page import="beans.ArithmeticBean" %> 
<jsp:useBean id="arithBean" class="beans.ArithmeticBean" scope="request" /> 
<jsp:setProperty name="arithBean" property="num1" param="num1" /> 
<jsp:setProperty name="arithBean" property="num2" param="num2" /> 
<jsp:setProperty name="arithBean" property="operation" param="operation" /> 
<% 
%> 
arithBean.calculate(); 
<!DOCTYPE html> 
<html> 
<head> 
<title>Calculation Result</title> 
</head> 
<body> 
<h2>Calculation Result</h2> 
<p>Number 1: <%= arithBean.getNum1() %></p> 
<p>Number 2: <%= arithBean.getNum2() %></p> 
<p>Operation: <%= arithBean.getOperation() %></p> 
<p>Result: <%= arithBean.getResult() %></p> 
<br> 
<a href="index.jsp">Go Back</a> 
</body> 
</html>
