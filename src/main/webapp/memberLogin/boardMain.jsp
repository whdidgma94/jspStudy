<%@page import="Board.BoardVO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<body>
	<h1>게시판</h1>
	<table border="1">
	<tr><td>번호</td><td>제목</td><td>글쓴이</td><td>조회수</td><td>작성일</td></tr>
	<%for(BoardVO board : BoardDAO.getInstance().getAllBoardList()){
		if(!board.isDeleted()){
	%>
		<tr>
		<td><%=board.getNum() %> </td>
		<td><a href="boardView.jsp?num=<%=board.getNum()%>"><%=board.getTitle() %></a></td>
		<td><%=board.getWriter() %></td>
		<td><%=board.getViewer() %></td>
		<td><%=board.getDate() %></td>
		</tr>
			<%}
		}%>
	</table>
	<%
	Object idx = session.getAttribute("idx");
	if(idx!=null){%>
		<button onclick="location.href='boardAddForm.jsp'">작성하기</button>
	<%}%>
</body>
</html>