package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import model.ComBoard;
import model.ComUser;
import model.FreeBoard;
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
	public  ModelAndView longin(HttpServletRequest req, HttpSession session, @RequestParam(defaultValue = "0")String a) {
		ModelAndView mav = new  ModelAndView();
		String https = req.getHeader("referer");
		session.setAttribute("hrefs", https);
		if(session.getAttribute("user") ==null){
			mav.addObject("loginfo", a);
			mav.setViewName("/login/login");
		}else{
			int info = (int) session.getAttribute("userInfo");
			if(info == 1){
				mav.setViewName("nomalMain.do");
			}else{
				mav.setViewName("comMain.do");
			}
		}
		return mav;
	}

	@RequestMapping("loginCheck.do")
	public String getLogin(HttpSession session, String id, String pass, int radios) {
		String url = (String) session.getAttribute("hrefs");
		System.out.println(url);
		String url2 = "";
		if(url.matches(".*nomal.*")){
			url2 = "nomalMain.do";
		}else if(url.matches(".*com.*")){
			url2 = "comMain.do";
		}else{
			url2 = "index.do";
		}
		HashMap<String, Object> map = new HashMap<>();
		if (radios == 1) {
			map = nservice.getLogin(id, pass);
			session.setAttribute("userarea", map.get("userarea"));
		} else if (radios == 2) {
			map = cservice.getLogin(id, pass);
			session.setAttribute("comarea", map.get("comarea"));
		}
		session.setAttribute("user", map);
		session.setAttribute("userInfo", radios);

		if(session.getAttribute("userInfo").equals(1)){
			//일반유저라면
			HashMap<String, Object> sql = new HashMap<>();
			//생성된 해쉬맵에 지역정보를 담고
			sql.put("userarea", map.get("userarea"));
			//해쉬맵으로 서비스를 실행해서 전달된 지역 구인정보값읋 세션에 userarea로 저장한다.
			session.setAttribute("userarea", nservice.userarea(sql));
			HashMap<String, Object> userbasic = new HashMap<>();
			userbasic.put("code", session.getAttribute("userInfo"));
			userbasic.put("id", map.get("id"));
			session.setAttribute("userbasic", nservice.userbasic(userbasic));
			System.out.println(nservice.userbasic(userbasic));
		}
		else{
			//업체 로그인이라면 일반 유저의 로그인 상태와 상이함.
			HashMap<String, Object> sql = new HashMap<>();
			sql.put("comarea", map.get("comarea"));
			session.setAttribute("comarea", cservice.comarea(sql));
			HashMap<String, Object> combasic = new HashMap<>();
			combasic.put("code", session.getAttribute("userInfo"));
			combasic.put("id", map.get("id"));
			session.setAttribute("combasic", nservice.userbasic(combasic));
			System.out.println(nservice.userbasic(combasic));
		}
		
		
		return "redirect:" + url2;
	}
	@RequestMapping("areasel.do")
	public String test(HttpSession session,
			HttpServletRequest request){
		String pathSet = request.getSession().getServletContext().getRealPath("/json/area.json");
		session.setAttribute("area",nservice.areaJobNum(pathSet));
		return "redirect:index.do";
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
	@RequestMapping("mesegeForm.do")
	public ModelAndView mesegeForm(@RequestParam(defaultValue="1") int page, HttpSession session){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> user = null;
		HashMap<String, Object> re = null;
		
		if((int)session.getAttribute("userInfo") == 2){
			user = (HashMap<String, Object>) session.getAttribute("user");
			re = cservice.selectComM(page, (String)user.get("id"));
			mav.addAllObjects(re);
		}else{
			user = (HashMap<String, Object>) session.getAttribute("user");
			re = nservice.selectNomalM(page, (String)user.get("id"));
			mav.addAllObjects(re);
		}
		mav.setViewName("/com/mesegeForm");
		return mav;
	}
	@RequestMapping("deleteMesege.do")
	public String deleteMesege(int page, int mnum, HttpSession session){
		int userInfo = (int)session.getAttribute("userInfo");
		if(userInfo == 2){
			int re = cservice.deleteMesege(mnum);
		}else{
			int re = nservice.deleteMesege(mnum);
		}
		return "redirect:mesegeForm.do?page="+page;
	}
	@RequestMapping("errer500s.do")
	public String errer500s(){
		return "/errer/errer500s";
	}
	@RequestMapping("errer400s.do")
	public String errer400s(){
		return "/errer/errer400s";
	}
}