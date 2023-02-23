<%@page import="java.util.ArrayList"%>
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
	ArrayList<String> idList = new ArrayList<String>();
	ArrayList<String> pwList = new ArrayList<String>();
	ArrayList<String> nameList = new ArrayList<String>();
	ArrayList<String> genderList = new ArrayList<String>();
	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	response.sendRedirect("main.jsp");
	%>

</body>
</html>