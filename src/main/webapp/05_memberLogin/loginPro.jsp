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
	String pw = request.getParameter("pw");
	int idx = MemberDAO.getInstance().checkId(id);
	if(idx==-1){%>
		<script>
		alert("아이디 혹은 비밀번호를 확인하세요");
		location.href="loginForm.jsp";
		</script>
		<%
	}else if(MemberDAO.getInstance().checkPw(pw, idx)&&idx==0){
		response.sendRedirect("adminMain.jsp");
	}else if(MemberDAO.getInstance().checkPw(pw, idx)){
		session.setAttribute("idx", idx);
		response.sendRedirect("main.jsp");
	}else{%>
		<script>
		alert("아이디 혹은 비밀번호를 확인하세요");
		location.href="loginForm.jsp";
		</script>
	<%}
	%>
</body>
</html>