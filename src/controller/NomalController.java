package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.FreeBoard;
import model.NomalBoard;
import service.FreeBoardService;
import service.NomalService;

@Controller
public class NomalController {
	@Autowired
	private NomalService nservice;
	
	@Autowired
	private FreeBoardService fservice;
	
	@RequestMapping("nomalMain.do")
	public ModelAndView selectDesc(HttpSession session){
		ModelAndView mav = new ModelAndView();
		List<FreeBoard> list= fservice.selectLimitDesc();
		List<NomalBoard> list2= nservice.selectLimitDesc();
		mav.addObject("gangnam", nservice.areaJobNum("강남"));
		mav.addObject("freeList",list);
		mav.addObject("nomalList",list2);
		mav.setViewName("/nomal/nomalMain");
		return mav;
	}
	
	@RequestMapping("nomalSignup.do")
	public ModelAndView Signup(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/nomal/nomalSignup");
		return mav;
	}
	
	@RequestMapping("nomalSearch.do")
	public ModelAndView searchPage(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/nomal/nomalSearch");
		return mav;
	}
	
	@RequestMapping("nomalBoardList.do")
	public ModelAndView nomalBoardList(
			@RequestParam(defaultValue="1") int page
			
			
			){
		System.out.println(page);
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> nb = new HashMap<>();
		nb = nservice.nomalBoardList(page);
		System.out.println("컨트롤 아웃");
		mav.setViewName("/nomal/nomalBoardList");
		mav.addAllObjects(nb);
		return mav;
		
	}
	
	@RequestMapping("nomalView.do")
	public ModelAndView boardView(HttpSession session, int nnum){
		ModelAndView mav = new ModelAndView();
		mav.addObject("user" , session.getAttribute("user"));
		mav.addObject(nservice.boardView(nnum));
		mav.setViewName("nomal/nomalView");
		return mav;
	}
	
}
