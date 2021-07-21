package controller.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.model.UserVO;
import user.service.UserService;

@Controller
public class LoginController {
	
	@Resource(name = "userservice")
	UserService userservice;
	
	@RequestMapping("/logindo")
	public ModelAndView logindo(HttpSession session, String id, String password) {
		System.out.println("loginID:"+id+"/loginPW:"+password);
		// id,pw 조건검색하여서 일치하면 로그인 session저장
		UserVO user = userservice.select(id, password);
//		System.out.println("목록:"+userservice.select());
		System.out.println(user);
		if(user != null) {
			//로그인성공
			session.setAttribute("user", user);
			System.out.println("로그인성공");
		} else {
			//로그인실패
			System.out.println("로그인실패");
		}
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		// session 초기화 시켜주고 현재 페이지로 돌아가기 [파라미터로 버튼누르는시점의 url? 정보를 받아와야할 거 같음]
		session.invalidate();
		ModelAndView mv = new ModelAndView("index");
		System.out.println("로그아웃");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}
	
	@RequestMapping("/signup")
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/signup.jsp");
		return mv;
	}
	
	@RequestMapping("/signupdo")
	public ModelAndView signupdo() {
		userservice.insert(); // 함수구현해야댐
		ModelAndView mv = new ModelAndView("index");
		System.out.println("가입성공");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}
}
