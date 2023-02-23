<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Random ran = new Random();
	int num1 = ran.nextInt(8)+2;
	int num2 = ran.nextInt(9)+1;
	%>
	<h2>구구단</h2>
	<form action="ex05_form04pro.jsp">
	<%=num1 %> * <%=num2 %> = <input type = "number" name="result"> <br><br>
	<input type="hidden" value=<%=num1 %> name="num1">
	<input type="hidden" value=<%=num2 %> name="num2">
	</form>
</body>
</html>