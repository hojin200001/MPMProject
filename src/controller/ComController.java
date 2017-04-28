package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.FreeBoard;
import model.NomalBoard;
import service.ComService;
import service.FreeBoardService;

@Controller
public class ComController {
	@Autowired
	private FreeBoardService fservice;
	@Autowired
	private ComService cservice;
	
	@RequestMapping("comMain.do")
	public ModelAndView comMain(){
		ModelAndView mav = new ModelAndView();
		List<FreeBoard> flist= fservice.selectLimitDesc();
		List<NomalBoard> nlist = cservice.selectNomalBoardDesc();
		mav.addObject("nomalList", nlist);
		mav.addObject("freeList",flist);
		mav.setViewName("/com/comMain");
		return mav;
	}
	
	@RequestMapping("comView.do")
	public ModelAndView boardView(HttpSession session, int cnum){
		ModelAndView mav = new ModelAndView();
		mav.addObject("user" , session.getAttribute("user"));
		mav.addObject(cservice.boardView(cnum));
		mav.setViewName("com/comView");
		return mav;
	}
	
	@RequestMapping("comBoardList.do")
	public ModelAndView comBoardList(
			@RequestParam(defaultValue="1") int page){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> cb = new HashMap<>();
		cb = cservice.comBoardList(page);
		mav.setViewName("/com/comBoardList");
		mav.addAllObjects(cb);
		return mav;
		
	}
}
