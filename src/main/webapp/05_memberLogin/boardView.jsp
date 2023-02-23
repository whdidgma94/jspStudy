<%@page import="Member.MemberDAO"%>
<%@page import="Board.BoardVO"%>
<%@page import="Board.BoardDAO"%>
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
	BoardVO board = null;
	for(BoardVO dbBoard : BoardDAO.getInstance().getAllBoardList()){
		if(dbBoard.getNum()==num){
			board=dbBoard;
			break;
		}
	}
	%>
	<table border="1">
	<tr><td colspan="2"><%=board.getTitle()%></td> </tr>
	<tr><td><%=board.getWriter()%></td><td><%=board.getDate()%></td></tr>
	<tr><td colspan="2"><%=board.getContent()%></td></tr>
	<tr> 
	<td colspan = "2">
	 <button onclick = "location.href='boardMain.jsp'">목록으로</button>
	 <%
	 Object idx = (int)session.getAttribute("idx");
	 if(idx!=null){
	 String id = MemberDAO.getInstance().getAMember((int)idx).getId();
	 if(board.getWriterId().equals(id)){%>
		 <button onclick = "location.href='boardMain.jsp'">삭제하기</button>
	 <%}
	 }
	 %>
	</td>
	</tr>
	</table>
	
</body>
</html>