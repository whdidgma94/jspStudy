package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Member.MemberDAO;

@WebServlet("/login.do")
public class LoginAction extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String msg = "";
		int idx = MemberDAO.getInstance().checkId(id);
		if(idx==-1){
			msg="아이디 혹은 비밀번호를 확인하세요";
		}else if(MemberDAO.getInstance().checkPw(pw,idx)&&idx==0){
			request.setAttribute("idx", idx);
			msg="관리자 로그인 성공";
		}else if(MemberDAO.getInstance().checkPw(pw,idx)){
			request.setAttribute("idx", idx);
			msg="로그인 성공";
		}else{
			msg="아이디 혹은 비밀번호를 확인하세요";
		}
		request.setAttribute("msg", msg);
		
		RequestDispatcher dis = request.getRequestDispatcher("/memberLogin/loginPro.jsp");
		dis.forward(request, response);
	}

}
