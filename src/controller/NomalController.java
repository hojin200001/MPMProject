package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.ComBoard;
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
	public ModelAndView selectDesc(HttpSession session,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<FreeBoard> list= fservice.selectLimitDesc();
		List<ComBoard> list2= nservice.selectLimitDesc();
		//mav.addObject("gangnam", nservice.areaJobNum("강남"));
		String pathSet = request.getSession().getServletContext().getRealPath("/nomal/area.json");
		mav.addObject("freeList",list);
		mav.addObject("comList",list2);
		mav.addObject("area",nservice.areaJobNum(pathSet));
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
			@RequestParam(defaultValue="1") int page,
			@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> nb = new HashMap<>();
		//HashMap<String, Object> check = new HashMap<>();

		if(ObjectUtils.isEmpty(checkbox) && ObjectUtils.isEmpty(radiobox) && ObjectUtils.isEmpty(area)){
			nb = nservice.nomalBoardList(page);
			mav.addAllObjects(nb);
		}else{
			if(!(ObjectUtils.isEmpty(checkbox))){
//				for(int i=0; i<checkbox.size(); i++){
//					String n = Integer.toString(i);
//					check.put(n, checkbox.get(i));	
//				}
			}
			nb = nservice.getNomalBoardListByCondition(page, checkbox, radiobox, area);
			mav.addObject("ar", area);
			mav.addObject("rb", radiobox);
			mav.addObject("cb", checkbox);
			mav.addAllObjects(nb);
		}
		mav.setViewName("/nomal/nomalBoardList");
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
	
	@RequestMapping("nomalWriteForm.do")
	public String comWriteForm(){
		return "/nomal/nomalWriteForm";
	}
	
	@RequestMapping("nomalWrite.do")
	public String comWrite(NomalBoard nomal){
		nservice.insertNomalBoard(nomal);
		return "redirect:nomalBoardList.do ";
	}
}
