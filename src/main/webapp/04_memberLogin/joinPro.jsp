<%@page import="java.util.ArrayList"%>
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
	MemberDAO memberDAO = MemberDAO.getInstance();
	String id = request.getParameter("id");
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
	ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("nameList");
	ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");

	for(String dbid :idList){
		if(dbid.equals(id)){
		%>
			<script>
			alert("이미 존재하는 아이디 입니다");
			location.href="join.jsp";
			</script>
		<%}
	}
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	idList.add(id);
	pwList.add(pw);
	nameList.add(name);
	genderList.add(gender);
	
 	session.setAttribute("idList",idList );
	session.setAttribute("pwList",pwList );
	session.setAttribute("nameList",nameList );
	session.setAttribute("genderList",genderList );
	
	memberDAO.addMember(id,pw,name,gender);
	%>
	<script>
	alert("<%= name %> 님 회원 가입 완료");
	location.href="main.jsp";
	</script>
</body>
</html>