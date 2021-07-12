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
		System.out.println("���� ����-------------------------------------");
		request.setCharacterEncoding("UTF-8");
		System.out.println("�������� uri:"+request.getRequestURI());
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
				//�α��� ���� ���� ������ Ȩ������ �̵�
				request.getSession().setAttribute("id",id);
				request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
				System.out.println("login success");
				return;
			} else {
				// �α��� ���� �α��� ������ �ӹ���
				response.sendRedirect("/login");
				System.out.println("login fail");
				return;
			}
		} else if(urls[0].equals("logout")) {
			request.getSession().invalidate();
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			return;
		} else if (urls[0].equals("login") && urls[1].equals("signup.do")) {
			// dao���� member ���̺� insert �����ϱ�
			System.out.println("ȸ������ ��ġ�ϱ�");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String password_re = request.getParameter("password-repeat");
			if(!password.equals(password_re)) {
				System.out.println("��й�ȣ ����ġ");
				return;
			}
			MemberDAO dao = new MemberDAO();
			dao.insert(new MemberVo(id,password));
			System.out.println("ȸ�����Լ���");
			response.sendRedirect("/login");
			return;
		}
		
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

}
