package controller.login;

import java.util.Date;

import javax.annotation.Resource;
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

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/login.jsp");
		return mv;
	}
	
	@RequestMapping("/logindo")
	public String logindo(HttpSession session, String email, String password) {
		System.out.println("loginID:"+email+"/loginPW:"+password);
		// id,pw 조건검색하여서 일치하면 로그인 session저장
		UserVO user = userservice.userLogin(email, password);
		if(user != null) {
			session.setAttribute("user", user);
			System.out.println("로그인성공:"+user);
			return "redirect:home";
		} else {
			System.out.println("로그인실패");
			return "redirect:login";
		}
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
	
	@SuppressWarnings("deprecation")
	@RequestMapping("/signupdo")
	public ModelAndView signupdo(String email, String password, String name,
			int year, int mm, int dd, String gender, String ok, String agreement) {
		Date birthday = null;
		birthday= new Date(year, mm, dd);
		UserVO user = new UserVO(email, password, name, birthday, gender);
		System.out.println(user);
		userservice.userInsert(user);
		ModelAndView mv = new ModelAndView("index");
		System.out.println("가입성공");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}

	@RequestMapping("/checkemail")
	public ModelAndView checkemail(String email) {
		UserVO user = userservice.checkEmail(email);
		System.out.println(user);
		if(user != null) {
			
		}
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/signup.jsp");
		return mv;
	}
	
	@RequestMapping("/find")
	public ModelAndView find() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/find.jsp");
		return mv;
	}
	
	@RequestMapping("/finddo")
	public ModelAndView finddo(String femail) {
		UserVO user = userservice.checkEmail(femail);
		if(user != null) {
			System.out.println("검색된 유저:"+user);			
		} else {
			System.out.println("일치하는 이메일 없음");
		}
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/find.jsp");
		return mv;
	}
	
	@RequestMapping("/withdrawal")
	public ModelAndView withdrawal(String email) {
		int result = userservice.userDelete(email);
		if(result >0) {
			System.out.println(email+" 회원탈퇴");
		} else {
			System.out.println("회원탈퇴 실패 일치하는 유저 없음");
		}

		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/find.jsp");
		return mv;
	}
}
