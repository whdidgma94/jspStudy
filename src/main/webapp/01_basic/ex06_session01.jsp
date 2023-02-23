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
	String names[]={"조양흠", "홍길동", "강호동"};
	int scores[] = {87,21,76};
	session.setAttribute("names", names);
	session.setAttribute("scores", scores);
	
	session.setMaxInactiveInterval(5);
	%>
	<a href="ex06_session01Pro.jsp">다음페이지</a>
</body>
</html>