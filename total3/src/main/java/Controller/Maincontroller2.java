package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.model.BoardVO;
import board.model.PageBoard;
import login.dao.LoginDAO;

//@WebServlet("/")
public class Maincontroller2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("service on");
		String url = request.getRequestURI();
		String[] urls = url.substring(1).split("/");
		System.out.println("접속경로:"+url);
		String context = "/home/"; // 파일경로
		String page = "section.jsp"; // 파일명
		if(urls[0].equals("") || urls[0].equals("index") && urls.length == 1) {
			context = "/home/";
			page = "section.jsp";
		} else {
			context = "/"+urls[0]+"/";
			if (context.equals("/home/")) {
				page = "section.jsp";
			} else if (context.equals("/intro/")) {
				page = "intro.jsp";
			} else if (context.equals("/realchat/")) {
				page = "realchat.jsp";
			} else if (context.equals("/board/")) {
				if(request.getSession().getAttribute("id") == null) {
					// 로그인이 되지 않았을 때 서비스 불가
					context = "/login/";
					page = "login.jsp";
				} else {
					if (urls.length == 1) {
						BoardDAO dao = new BoardDAO();
						int requestPage = 1;
						try {
							requestPage = Integer.parseInt(request.getParameter("requestPage"));
						} catch (Exception e) {
							requestPage = 1;
						}
						PageBoard pageboard = dao.pagemove(requestPage,0); //원래 dao.list()
//						System.out.println(pageboard.getList());
						request.setAttribute("pageboard", pageboard);
						request.setAttribute("requestPage", requestPage);
						page = "list.jsp";
					} else if(urls[1].equals("pagemove")) {
						BoardDAO dao = new BoardDAO();
						int requestPage = 1;
						int pagemove = 0;
						try {
							requestPage = Integer.parseInt(request.getParameter("requestPage"));
							pagemove = Integer.parseInt(request.getParameter("pagemove"));
						} catch (Exception e) {
							requestPage = 1;
						}
						PageBoard pageboard = dao.pagemove(requestPage, pagemove);
//						System.out.println(pageboard.getList());
						request.setAttribute("pageboard", pageboard);
						request.setAttribute("requestPage", requestPage);
						page = "list.jsp";
					} else if (urls[1].equals("insert")) {
						page += "writeForm.jsp";
					} else if (urls[1].equals("insert.do")) {
						String title = request.getParameter("title");
						String content = request.getParameter("content");
						String id = request.getParameter("writeName");
						BoardVO board = new BoardVO(title, content, id, id);
						BoardDAO dao = new BoardDAO();
						dao.insert(board);
						PageBoard pageboard = dao.pagemove(1,0); //원래 dao.list()
						request.setAttribute("pageboard", pageboard);
						page += "board.jsp";
					} else if (urls[1].equals("read")) {
						String _idx = request.getParameter("idx");
						String requestPage = request.getParameter("requestPage");
						int idx = 0;
						if (_idx != null && !_idx.equals("")) {
							idx = Integer.parseInt(_idx);
							BoardDAO dao = new BoardDAO();
							dao.readcountUpdate(idx);
							BoardVO board = dao.select(idx);
							request.setAttribute("board", board);
							request.setAttribute("requestPage", requestPage);
							page = "read.jsp";
						}
					} else if (urls[1].equals("update")) {
						// 업데이트 폼으로 전달
		
					} else if (urls[1].equals("update.do")) {
						// 업데이트 폼에서 받아서 실행 
						
					} else if (urls[1].equals("delete")) {
						// 삭제 실행
						
					} else if (urls[1].equals("reply")) {
						int idx = Integer.parseInt(request.getParameter("idx"));
						int groupid = Integer.parseInt(request.getParameter("groupid"));
						int depth = Integer.parseInt(request.getParameter("depth"));
						depth++;
						int reOrder = Integer.parseInt(request.getParameter("re_order"));
						reOrder++;
						String title = request.getParameter("title");
						String requestPage = request.getParameter("requestPage");
						BoardVO board = new BoardVO();
						board.setIdx(idx);
						board.setGroupid(groupid);
						board.setDepth(depth);
						board.setReOrder(reOrder);
						board.setTitle(title);
						//System.out.println(board);
						request.setAttribute("board", board);
						request.setAttribute("requestPage", requestPage);
						page = "replyForm.jsp";
						
					} else if (urls[1].equals("reply.do")) {
						int idx = Integer.parseInt(request.getParameter("parent_idx"));
						int groupid = Integer.parseInt(request.getParameter("groupid"));
						int depth = Integer.parseInt(request.getParameter("depth"));
						int reOrder = Integer.parseInt(request.getParameter("re_order"));
						String title = request.getParameter("title");
						String content = request.getParameter("content");
						String writeId = request.getParameter("write_id");
						String writeName = request.getParameter("write_name");
						String requestPage = request.getParameter("requestPage");
						BoardVO board = new BoardVO();
						board.setIdx(idx);
						board.setGroupid(groupid);
						board.setDepth(depth);
						board.setReOrder(reOrder);
						board.setTitle(title);
						board.setContent(content);
						board.setWriteId(writeId);
						board.setWriteName(writeName);
						BoardDAO dao = new BoardDAO();
						int result = dao.replyInsert(board);
						if (result > 0) {
							response.sendRedirect("/board?requestPage=" + requestPage);
							return;
						}
					} else if (urls[1].equals("searchList")) {
						String field = request.getParameter("field");
						String search = request.getParameter("search");
						System.out.println("select:"+field);
						System.out.println("search"+search);
						BoardDAO dao = new BoardDAO();
						PageBoard pageboard = dao.searchlist(field, search);
						request.setAttribute("pageboard", pageboard);
						request.setAttribute("requestPage", 1);
						page = "list.jsp";
					}
				}
			} else if (context.equals("/login/")) {
				if(urls.length == 1) {
					page = "login.jsp";					
				} else if (urls[1].equals("login.do")) {
					LoginDAO logindao = new LoginDAO();
					int result = logindao.loginCheck(request.getParameter("id"), request.getParameter("password"));
					if (result > 0) {
						request.getSession().setAttribute("id", request.getParameter("id"));
						context = "/home/";
						page = "section.jsp";
					} else {
						request.getSession().invalidate();
						page = "login.jsp"; 
					}
				} else if (urls[1].equals("logout")) {
					request.getSession().invalidate();
					context = "/home/";
					page = "section.jsp";
				} else {
					page = "login.jsp";
				}
			} else {
				context = "/home/";
				page = "section.jsp";
			}
			
		}
		request.setAttribute("section", context+page);
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		
	}

}
