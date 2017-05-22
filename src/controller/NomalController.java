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
import service.ComService;
import service.FreeBoardService;
import service.NomalService;

@Controller
public class NomalController {
	@Autowired
	private NomalService nservice;
	
	@Autowired
	private FreeBoardService fservice;
	
	@Autowired
	private ComService cservice;

	@RequestMapping("nomalMain.do")
	public ModelAndView selectDesc(HttpSession session,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<FreeBoard> list= fservice.selectLimitDesc();
		List<ComBoard> list2= nservice.selectLimitDesc();
		//String pathSet = request.getSession().getServletContext().getRealPath("/json/area.json");
		mav.addObject("freeList",list);
		mav.addObject("comList",list2);
		HashMap<String, Object> map = new HashMap<>();
		List<Integer> counts = null;
		if(session.getAttribute("user") != null){
			map = (HashMap<String, Object>) session.getAttribute("user");
			map.put("userInfo", session.getAttribute("userInfo"));
			if((int)map.get("userInfo") == 2){
				counts = cservice.comMcounts((String)map.get("id"));
				mav.addObject("countNew", counts.get(0));
				mav.addObject("countAll", counts.get(1));
			}else{
				counts = nservice.nomalMcounts((String)map.get("id"));
				mav.addObject("countNew", counts.get(0));
				mav.addObject("countAll", counts.get(1));
			}
			
		}
		//mav.addObject("area",nservice.areaJobNum(pathSet));
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
	public ModelAndView nomalSearch(
			@RequestParam(defaultValue="1") int page,
			@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area,
			@RequestParam(value="keyword", required=false) String keyword,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		if(ObjectUtils.isEmpty(checkbox) && ObjectUtils.isEmpty(radiobox) && ObjectUtils.isEmpty(area)){
		}else{
			HashMap<String, Object> nlist = cservice.getComBoardListByCondition(page, checkbox, radiobox, area, keyword);
			mav.addObject("comBoard", nlist.get("comBoard"));
			mav.addAllObjects(nlist);
			mav.addObject("ar", area);
			mav.addObject("rb", radiobox);
			mav.addObject("cb", checkbox);
			mav.addObject("kw", keyword);
			}
		mav.setViewName("/nomal/nomalSearch");
		return mav;
	}
	
	@RequestMapping("nomalBoardList.do")
	public ModelAndView nomalBoardList(
			@RequestParam(defaultValue="1") int page,
			@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> nb = new HashMap<>();
		HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("user");
		String id = (String)user.get("id");
		session.getAttribute("area");
		
		//if(ObjectUtils.isEmpty(checkbox) && ObjectUtils.isEmpty(radiobox) && ObjectUtils.isEmpty(area)){
			nb = nservice.nomalBoardList(page, id);
			mav.addAllObjects(nb);
//		}else{
//			nb = nservice.getNomalBoardListByCondition(page, checkbox, radiobox, area);
//			mav.addObject("ar", area);
//			mav.addObject("rb", radiobox);
//			mav.addObject("cb", checkbox);
//			mav.addAllObjects(nb);
//			
//		}
//		if(ObjectUtils.isEmpty(session.getAttribute("userarea"))){
//		}else{
//			HashMap<String, Object> userarea = new HashMap<>();
//			userarea.put("userarea", session.getAttribute("userarea"));
//			session.setAttribute("userareanum", nservice.userarea(userarea));
//		}

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
	
	@RequestMapping("nomalModifyForm.do")
	public ModelAndView nomalBoardModify(int num){
		ModelAndView mav = new ModelAndView();
		mav.addObject(nservice.boardView(num));
		mav.setViewName("nomal/nomalModifyForm");
		return mav;
	}
	
	@RequestMapping("nomalModify.do")
	public String nomalBoardModifyDo(NomalBoard nomal){
		nservice.nomalBoardModify(nomal);													
		return "redirect:nomalBoardList.do";		
	}
	
	//---------------좌표로 거리 구하는 함수
	@RequestMapping("testPoint.do")
	public String testArea(){
		
		System.out.println("위치");
		String asa1 = nservice.amguna();
		String asa2 = nservice.amguna2();
		String[] n1=asa1.split(",");
		String[] n2=asa2.split(",");
		System.out.println(Double.parseDouble(n1[1].trim()));
		System.out.println(Double.parseDouble(n1[0].trim()));
		double sipse = nservice.distance(Double.parseDouble(n1[0].trim()), Double.parseDouble(n1[1].trim()), Double.parseDouble(n2[0].trim()), Double.parseDouble(n2[1].trim()), "meter");
		System.out.println(sipse+"미터 ㅋㅋㅋㅋ");
		return "redirect:nomalMain.do";
	}
	
}
