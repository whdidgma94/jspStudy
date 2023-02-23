<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
LocalDate now = LocalDate.now();
String today = now.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test.jsp</h1>
	<h1><%= 10 + 3 %></h1>
	<h1><%= now %></h1>
	<h1>오늘은 <%= today %> 이야</h1>
</body>
</html>