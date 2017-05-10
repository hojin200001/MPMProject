package controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import model.ComUser;
import model.NomalUser;
import service.ComService;
import service.NomalService;

@Controller
public class MainController {
	@Autowired
	private NomalService nservice;
	@Autowired
	private ComService cservice;

	@RequestMapping("index.do")
	public void index() {
	}

	@RequestMapping("login.do")
	public String longin(HttpServletRequest req, HttpSession session) {
		session.setAttribute("hrefs", req.getHeader("referer"));
		return "/login/login";
	}

	@RequestMapping("loginCheck.do")
	public String getLogin(HttpSession session, String id, String pass, int radios) {
		String url = (String) session.getAttribute("hrefs");
		String url2 = url.substring(33);
		if (url2.equals("")) {
			url2 = "index.do";
		}
		HashMap<String, Object> map = new HashMap<>();
		if (radios == 1) {
			map = nservice.getLogin(id, pass);
		} else if (radios == 2) {
			map = cservice.getLogin(id, pass);
		}
		if (map != null) {
			session.setAttribute("user", map);
			session.setAttribute("userInfo", radios);
			return "redirect:" + url2;
		} else {
			return "redirect:login.do";
		}
	}

	@RequestMapping("logoutForm.do")
	public String logoutForm(HttpServletRequest req, HttpSession session) {
		session.setAttribute("hrefs", req.getHeader("referer"));
		return "/login/logout";
	}
	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "/join/joinForm";
	}

	@RequestMapping("nomalJoinFormIndex.do")
	public String nomalJoinfomindex() {
		return "/join/nomalJoinForm";
	}

	@RequestMapping("nomalJoinIndex.do")
	public String nomalJoinindex(NomalUser nomaluser) {

		int re = nservice.insertNomalUser(nomaluser);
		if (re == 1) {
			return "redirect:index.do";
		} else {
			return "";
		}
	}

	@RequestMapping("comJoinFormIndex.do")
	public String comJoinFormIndex() {
		return "/join/comJoinForm";
	}
	@RequestMapping("comJoinIndex.do")
	public String comJoinIndex(ComUser comUser, @RequestParam("ufile") MultipartFile file){
		cservice.insertComUser(comUser, file);
		return "redirect:index.do";
	}
	@RequestMapping("download.do")
	public View download(String id) {
		View view = new DownloadView(cservice.getAttachedFile(id));
		return view;
	}
	@RequestMapping("idCheck.do")
	public ModelAndView idCheck(String nomalId){
		ModelAndView mav = new ModelAndView();
		String msg = nservice.idCheck(nomalId);
		mav.addObject("msg", msg);
		mav.addObject("nomalId", nomalId);
		mav.setViewName("/join/idCheck");
		return mav;
	}
	@RequestMapping("idCheckCom.do")
	public ModelAndView idCheckCom(String comId){
		ModelAndView mav = new ModelAndView();
		String msg = cservice.idCheck(comId);
		mav.addObject("msg", msg);
		mav.addObject("comId", comId);
		mav.setViewName("/join/idCheckCom");
		return mav;
	}
}