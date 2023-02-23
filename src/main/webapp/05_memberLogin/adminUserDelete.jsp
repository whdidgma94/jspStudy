<%@page import="Member.MemberDAO"%>
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
	String id = request.getParameter("id");
	int idx = MemberDAO.getInstance().checkId(id);
	MemberDAO.getInstance().deleteMember(idx);
	response.sendRedirect("adminUserList.jsp");
	%>
</body>
</html>