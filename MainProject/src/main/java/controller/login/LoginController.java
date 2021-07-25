package controller.login;

import java.util.Date;
import java.util.List;

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
	
	@RequestMapping("/findEmail")
	public ModelAndView findEmail(String fname , String fyear, String fmm, String fdd) {
		// 이름 생년월일로 이메일 찾기
		String day =fyear+fmm+fdd;
		System.out.println(day);
		List<UserVO> list = userservice.findEmail(fname, day);
		if(list.size() != 0) {
			for(UserVO user : list) {
				String email = user.getEmail();
				System.out.println(email);
				String id = email.split("@")[0];
				int star = id.length() -3;
				String s="";
				for(int i =0;i<star;i++) {
					s+="*";
				}
				email = id.substring(0, 3)+s+"@"+email.split("@")[1];
				System.out.println(email);
				user.setEmail(email);
			}
		} else {
			System.out.println("일치하는 이메일 없음");
		}
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/findEmail.jsp");
		mv.addObject("userlist", list);
		return mv;
	}
	
	@RequestMapping("/withdrawal")
	public ModelAndView withdrawal(String email) {
		// 유저삭제
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
	
	@RequestMapping("/pwdupdate")
	public ModelAndView pwdupdate(String email, String password) {
		// 파라미터 넘겨받을 때 현재 사용중인 비밀번호로 바꾸지 못하도록 조건문 주어야함 
		int result = userservice.userPwdUpdate(email, password);
		if(result >0) {
			System.out.println(email+" 회원비밀번호 수정");
		} else {
			System.out.println("회원탈퇴 실패 일치하는 유저 없음");
		}

		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Login/find.jsp");
		return mv;
	}
}
