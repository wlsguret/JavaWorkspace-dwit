package controller.login;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.service.UserService;

@Controller
public class LoginController {
	
	@Resource(name = "userservice")
	UserService userservice;
	
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
