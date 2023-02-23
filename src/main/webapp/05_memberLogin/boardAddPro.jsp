<%@page import="Board.BoardDAO"%>
<%@page import="java.time.LocalDate"%>
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
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	if(title.equals("")||content.equals("")){%>
		<script>
		alert("제목과 내용을 모두 입력해야 합니다.");
		location.href="boardAddForm.jsp";
		</script>
	<%}else{
	int idx = (int)session.getAttribute("idx");
	String writer = MemberDAO.getInstance().getAMember(idx).getName();
	String writerId = MemberDAO.getInstance().getAMember(idx).getId();
	String date = ""+LocalDate.now();
	BoardDAO.getInstance().addBoard(title,content,writer,writerId,date);%>
	<script>
		alert("작성 완료.");
		location.href="boardMain.jsp";
		</script>
	<%}%>
	
</body>
</html>