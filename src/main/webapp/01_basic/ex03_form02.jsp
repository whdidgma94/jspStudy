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
		request.setCharacterEncoding("utf-8");
		//String num1 = request.getParameter("su1");
		//String num2 = request.getParameter("su2");
		int num1 = Integer.parseInt(request.getParameter("su1"));
		int num2 = Integer.parseInt(request.getParameter("su2"));
	%>
	<h1>num1=<%=num1 %></h1>
	<h1>num2=<%=num2 %></h1>
	<h1>hap = <%= num1+num2 %></h1>
</body>
</html>