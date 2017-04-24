package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.FreeBoard;
import service.FreeBoardService;

@Controller
public class ComController {
	@Autowired
	private FreeBoardService fservice;
/*	@Autowired
	private ComService cservice;*/
	
	@RequestMapping("comMain.do")
	public ModelAndView comMain(){
		ModelAndView mav = new ModelAndView();
		List<FreeBoard> list= fservice.selectLimitDesc();
		mav.addObject("freeList",list);
		mav.setViewName("/com/comMain");

		return mav;
	}
	
}
