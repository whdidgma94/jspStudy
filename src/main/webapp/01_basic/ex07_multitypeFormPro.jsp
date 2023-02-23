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
		int num = Integer.parseInt(request.getParameter("num")); 
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String subject = request.getParameter("subject");
		String[] hobbies = request.getParameterValues("hobbies");
		String memo = request.getParameter("memo");
	%>
	<table border="1">
	<tr><th>번호</th><th>이름</th><th>과목</th><th>취미</th><th>메모</th></tr>
	<tr>
	<td><%=num %></td><td><%=name %></td><td><%=subject %></td>
	<td><%for(int i = 0 ; i < hobbies.length;i++){%>
		<%=hobbies[i]%>
	<%} %></td>
	<td><%=memo %></td>
	</tr>
	</table>
</body>
</html>