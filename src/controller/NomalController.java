package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		mav.addObject("freeList",list);
		mav.addObject("nomalList",list2);
		System.out.println("삽입");
		mav.setViewName("/nomal/nomalMain");
		return mav;
	}
	
	@RequestMapping("nomalSignup.do")
	public ModelAndView Signup(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/nomal/nomalSignup");
		return mav;
	}
}
