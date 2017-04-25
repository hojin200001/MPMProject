package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		mav.addObject("freeList",flist);
		mav.addObject("nomalList", nlist);
		mav.setViewName("/com/comMain");
		return mav;
	}
}
