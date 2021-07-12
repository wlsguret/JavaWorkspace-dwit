package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;
import member.model.MemberVo;

@WebServlet("/")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서비스 실행-------------------------------------");
		request.setCharacterEncoding("UTF-8");
		System.out.println("현재접속 uri:"+request.getRequestURI());
		String url = request.getRequestURI().substring(1);
		String[] urls = url.split("/");
		if(urls[0].equals("index")) {
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			return;
		} else if (urls[0].equals("login") && urls.length==1) {
			request.getRequestDispatcher("/WEB-INF/login/login.jsp").forward(request, response);
			return;
		} else if (urls[0].equals("login.do")) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			if(new MemberDAO().loginCheck(id, password) == 1) {
				//로그인 성공 세션 저장후 홈페이지 이동
				request.getSession().setAttribute("id",id);
				request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
				System.out.println("login success");
				return;
			} else {
				// 로그인 실패 로그인 페이지 머무름
				response.sendRedirect("/login");
				System.out.println("login fail");
				return;
			}
		} else if(urls[0].equals("logout")) {
			request.getSession().invalidate();
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			return;
		} else if (urls[0].equals("login") && urls[1].equals("signup.do")) {
			// dao에서 member 테이블에 insert 동작하기
			System.out.println("회원가입 위치하기");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String password_re = request.getParameter("password-repeat");
			if(!password.equals(password_re)) {
				System.out.println("비밀버호 불일치");
				return;
			}
			MemberDAO dao = new MemberDAO();
			dao.insert(new MemberVo(id,password));
			System.out.println("회원가입성공");
			response.sendRedirect("/login");
			return;
		}
		
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

}
