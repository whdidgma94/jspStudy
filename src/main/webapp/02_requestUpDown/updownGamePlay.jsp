<%@page import="java.util.Random"%>
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
Random rand = new Random();
String play = request.getParameter("play");
int rnum=0;
if(play.equals("gameStart")){
	rnum = rand.nextInt(99)+1;
} else {
	rnum = Integer.parseInt(request.getParameter("rnum"));
}
%>
<h1>업다운게임</h1>
<form action="updownGamePlayPro.jsp" method="post">
<input type="number" name="input"><button>전송</button>
<input type="hidden" name="rnum" value="<%=rnum%>">


</form>
</body>
</html>