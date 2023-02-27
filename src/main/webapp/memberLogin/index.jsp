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
	if(MemberDAO.getInstance().getAllMemberList().size()==0){
	MemberDAO.getInstance().addMember("admin", "admin", "관리자", 28,"admin@admin","010-1234-5678","남자");
	}
	response.sendRedirect("main.jsp");
	%>
</body>
</html>