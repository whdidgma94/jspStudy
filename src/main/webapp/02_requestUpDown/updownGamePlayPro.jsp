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
int input=Integer.parseInt(request.getParameter("input"));
int rnum=Integer.parseInt(request.getParameter("rnum"));
%>

<%if(input==rnum){ %>
	<h1>정답!</h1>
	<a href="index.jsp">처음으로</a>
<%} else{ %>
	<h1>오답!</h1>
	<%if(input<rnum) {%>
		입력한 값보다 큽니다.		
	<%} else { %>
		입력한 값보다 작습니다.	
	<%} %>
	<a href="updownGamePlay.jsp?play=gamePlay&rnum=<%=rnum%>">뒤로가기</a>
<% }%>
</body>
</html>