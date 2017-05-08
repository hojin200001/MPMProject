package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.ComService;
import service.NomalService;

@Controller
public class MainController {
	@Autowired
	private NomalService nservice;
/*	@Autowired
	private ComService cservice;*/
	
	@RequestMapping("index.do")
	public void index(){}
	
	@RequestMapping("login.do")
	public String longin(){
		return "/login/login";
	}
	@RequestMapping("loginCheck.do")
	public String getLogin(HttpSession session, String id, String pass){
		HashMap<String, Object> map = new HashMap<>();
		map = nservice.getLogin(id, pass);
		System.out.println();
		if(map != null){
			session.setAttribute("user", map);
			session.setAttribute("userInfo", 3);
			return "redirect:index.do";
		}else{
			return "redirect:login.do";
		}
	}
	@RequestMapping("logoutForm.do")
	public String logoutForm(HttpServletRequest req, HttpSession session){
		 session.setAttribute("hrefs",req.getHeader("referer"));
		return "/login/logout";
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		String url = (String) session.getAttribute("hrefs");
		String url2 = url.substring(33);
		System.out.println(url2);
		session.invalidate();
		return "redirect:"+url2;
	}
	@RequestMapping("joinForm.do")
	public String join(){
		return "/main/joinForm";
	}
	
	@RequestMapping(value="/nomal/test.do", method=RequestMethod.POST)
	public void test01(@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area
			){
		System.out.print(radiobox);
		System.out.print(checkbox.size());
		System.out.println(area);
	}
}