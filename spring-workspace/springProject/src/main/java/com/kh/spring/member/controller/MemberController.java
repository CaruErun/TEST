package com.kh.spring.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;
@Controller

public class MemberController {
	
//	private MemberService memberService = new MemberServiceImpl();
	@Autowired
	private MemberService memberService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/*
	 * 기존 객체 생성 방식
	 * 서비스는 요청에 따라 객체가 생성됨
	 * 객체간의 결합도가 높아진다(소스코드의 수정이 일어날 경우 해당 코드를 작성한 곳 모든 곳에서 수정이 이루어져야 함.)
	 * 
	 */
	
	/*
	 * @RequestMapping(value="login.me") - RequestMapping 타입의 Annotation 붙여서 HandlerMapping 등록
	 * ()안에 속성을 여러개 넣을 시 속성명 = 값 , ... , 형태로 작성
	 * mapping 값이 하나라면 value 생략 가능
	 * 
	 * Spring에서 parameter(요청시 전달 값) 받는 방법
	 * 
	 * 1.HttpServletRequest를 이용해서 전달 받기 (기존 jsp/servlet 방식)
	 * 해당 메소드 매개 변수로 HttpServletRequest 작성 시
	 * 스프링 컨테이너가 해당 메소드를 호출(실행)할 때 자동으로 해당 객체 생성해서 매개변수 잡음
	 */
//	@RequestMapping("login.me")
//	public String loginMember(HttpServletRequest request) {
//		
//		String userId = request.getParameter("userId");
//		String userPw = request.getParameter("userPw");
//		
//		return "main";
//	}
	
	/*
	 * 2. @RequestParam 어노테이션 이용
	 * request.getParameter("key")를 통해 value를 얻는 역할을 대신 수행해주는 어노테이션
	 * jsp에서 작성했던 name값을 입력하면 매개변수로 담아옴
	 * 값이 비어있다면 defaultValue로 기본 값 설정 가능
	 */
	
//	@RequestMapping("login.me")
//	public String loginMember(@RequestParam(value="uerId") String userId,
//							@RequestParam(value="userPw") String userPw) {
//		return "main";
//	}
	
	/*
	 * 3. @RequestParam 어노테이션을 생략하는 방법
	 *  매개변수 명을 Parameter key 값과 동일하게 설정해야함
	 *  defaultValue 속성 사용 불가 
	 */
	
//	@RequestMapping("login.me")
//	public String loginMember(String userId, String userPw) {
//		
//		Member m = new Member();
//		return "main";
//	}
	
	/*
	 * 4. 커맨드 객체 방식
	 *   해당 메소드 매개 변수로 요청 시 전달 값 VO 클래스 타입 세팅하고 키값을 VO 클래스에 담고자하는 필드명으로 작성
	 *   
	 *   스프링 컨테이너가 해당 객체 기본생성자로 생성 후 내부적으로 setter 메소드를 찾아서
	 *   요청시 전달한 값을 필드에 담아준다
	 * 
	 *   key값과 필드명 같아야함
	 */
	
	/*
	 * 요청 후 return forwarding or url 재요청 방법
	 * 
	 * 1. 스프링에서 제공하는 Model 객체 이용 방법
	 *   Model 객체는 requestScope다
	 *   setAttribute가 아닌 addAttribute 사용
	 *   
	 * 2. 스프링에서 제공하는 ModelAndView 객체
	 *  Model 및 View 정보 담을 수 있음(modelAndView)형태로 리턴
	 */
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		
		Member loginUser = memberService.loginMember(m);
		if(loginUser==null) {
			session.setAttribute("alertMsg","로그인 실패");
			mv.setViewName("redirect:/");
		}else {
			if(bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())==false) {
				session.setAttribute("alertMsg", "아이디와 비밀번호가 일치하지 않습니다. 아이디와 비밀번호를 확인해주세요");
				mv.setViewName("redirect:/");
			}else {
			session.setAttribute("alertMsg", loginUser.getUserName()+"님 방문을 환영합니다.");
			session.setAttribute("loginUser",loginUser);
			mv.setViewName("redirect:/");
			}
		}


		return mv;
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.removeAttribute("loginUser");
		session.setAttribute("alertMsg", "성공적으로 로그아웃이 완료되었습니다.");
		return "redirect:/";
	}
	
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm() {
		return "member/memberEnrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, HttpSession session) {
		
		/*
		 * pw 암호화
		 * Bcrypt 방식 암호화 통해 pw를 암호문으로 변경
		 * 1) spring security 모듈 제공 라이브러리 3개 pom.xml 등록
		 * 2) BCryptPasswordEncoder 클래스 xml 파일에 bean 등록
		 * 3) web.xml에서 로딩할 수 있게 작성
		 */
		String encode = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encode);
		int result = memberService.insertMember(m);
		
		if(result>0) {
			session.setAttribute("alertMsg", "회원가입이 성공적으로 완료 되었습니다.");
			session.setAttribute("loginUser", m);
		}else {
			session.setAttribute("alertMsg", "회원가입에 실패하였습니다.");
		}
		return "main";
	}
	
	@RequestMapping("myPage.me")
	public String myPage() {
		return "member/myPage";
	}
	
	@RequestMapping("update.me")
	public String updateMember(Member m, HttpSession session) {
		int sw = 0;
		Member loginUser = (Member)session.getAttribute("loginUser");
//		if(m.getUserName().equals(loginUser.getUserName())) sw++;
//		if(m.getEmail().equals(loginUser.getEmail())) sw++;
//		if(m.getAge().equals(loginUser.getAge())) sw++;
//		if(m.getPhone().equals(loginUser.getPhone())) sw++;
//		if(m.getAddress().equals(loginUser.getAddress())) sw++;
//		if(m.getGender().equals(loginUser.getGender())) sw++;
		
		m.setUserPwd(loginUser.getUserPwd());
		m.setEnrollDate(loginUser.getEnrollDate());
		m.setModifyDate(loginUser.getModifyDate());
		m.setStatus(loginUser.getStatus());
		
		if(m.hashCode()==loginUser.hashCode()) sw=1;
		
		if(sw==1) {
			session.setAttribute("alertMsg", "변경 사항이 존재하지 않습니다.");
		}else {
			int result = memberService.updateMember(m);
			if(result>0) {
				Member updateUser = memberService.loginMember(m);
				session.setAttribute("alertMsg", "변경이 성공적으로 완료되었습니다.");
				session.setAttribute("loginUser",updateUser);
			}
			else session.setAttribute("alertMsg", "변경에 실패 하였습니다 잠시 후 다시 시도해주세요");
		
		}
		return "redirect:/myPage.me";
	}
	
	@RequestMapping("delete.me")
	public String deleteMember(Member m, HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		if(bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())==false) {
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다. 다시 확인해주세요");
			return "redirect:/myPage.me";
		}else {
			int result = memberService.deleteMember(loginUser.getUserId());
			if(result>0) {
				session.invalidate();

			}else {
				session.setAttribute("alertMsg", "회원 탈퇴 처리에 실패하였습니다 잠시후 다시 시도해주세요");
			}
			return "redirect:/";
		}

	}
}
