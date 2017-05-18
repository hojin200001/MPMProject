package controller;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.ComBoard;
import model.ComM;
import model.FreeBoard;
import model.InComBoard;
import model.NomalBoard;
import model.NomalM;
import model.NomalUser;
import service.ComService;
import service.FreeBoardService;
import service.NomalService;

@Controller
public class ComController {
	@Autowired
	private FreeBoardService fservice;
	@Autowired
	private ComService cservice;
	@Autowired
	private NomalService nservice;
	
	@RequestMapping("comMain.do")
	public ModelAndView comMain(HttpSession session){
		ModelAndView mav = new ModelAndView();
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
		List<FreeBoard> flist= fservice.selectLimitDesc();
		List<NomalBoard> nlist = cservice.selectNomalBoardDesc();
		List<String>timeList = getTime(flist);
		mav.addObject("timeList", timeList);
		mav.addObject("nomalList", nlist);
		mav.addObject("freeList",flist);
		mav.setViewName("/com/comMain");
		return mav;
	}
	
	@RequestMapping("comView.do")
	public ModelAndView boardView(HttpSession session, int cnum){
		ModelAndView mav = new ModelAndView();
		List<InComBoard> ico= cservice.selectIncomBoard(cnum);
		mav.addObject("user" , session.getAttribute("user"));
		mav.addObject(cservice.comVie(cnum));
		mav.addObject("inComBoard",ico);
		mav.addObject("inCount", cservice.InComBoardCount(cnum));
		mav.setViewName("com/comView");
		return mav;
	}
	
	@RequestMapping("comBoardList.do")
	public ModelAndView comBoardList(@RequestParam(defaultValue="1") int page, 
										@RequestParam(defaultValue="5") int boardsPerPage,
										@RequestParam(defaultValue="1") int search_type,
										HttpSession session){
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("user") != null && (int)session.getAttribute("userInfo") ==2){
			HashMap<String , Object> map = (HashMap<String, Object>) session.getAttribute("user");
			HashMap<String, Object> cb = new HashMap<>();
			cb = cservice.comBoardList(page, (String)map.get("id"), boardsPerPage);
			mav.addObject("PerPage",boardsPerPage);
			mav.addObject("search_type", search_type);
			mav.addObject("icbrList", cservice.inComBoardCount());
			mav.addAllObjects(cb);
			mav.setViewName("/com/comBoardList");
		}else if(session.getAttribute("user") != null && (int)session.getAttribute("userInfo") == 1){
			mav.setViewName("/login/loginAlert_id");			
		}else{
			mav.setViewName("/login/loginAlert_login");
		}
//		if(session.getAttribute("comarea").equals(null)){
//		}else{
//			HashMap<String, Object> userarea = new HashMap<>();
//			userarea.put("comarea", session.getAttribute("comarea"));
//			session.setAttribute("comareanum", cservice.comarea(userarea));
//		}
		return mav;
	}
	
	
	
	
	@RequestMapping("comView2.do")
	public ModelAndView boardView2(int cnum,@RequestParam(defaultValue="0")int type,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		if(type!=0){
			HashMap<String, Object> user = (HashMap<String, Object>) session.getAttribute("user");
			user.put("cnum", cnum);
			if(user.get("userInfo").toString().equals("1")){
				nservice.changeNomalM(user);
			}
			else{
				cservice.changeComM(user);
			}
		}
		mav.addObject(cservice.comVie(cnum));
		mav.setViewName("com/comView");
		return mav;
	}
	
	
	
	
	
	
	@RequestMapping("comSearch.do")
	public ModelAndView comSearch(
			@RequestParam(defaultValue="1") int page,
			@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area,
			HttpSession session){
		ModelAndView mav = new ModelAndView();
		
		if(ObjectUtils.isEmpty(checkbox) && ObjectUtils.isEmpty(radiobox) && ObjectUtils.isEmpty(area)){
		}else{
			HashMap<String, Object> nlist = nservice.getNomalBoardListByCondition(page, checkbox, radiobox, area);
			mav.addObject("nomalBoard", nlist.get("nomalBoard"));
			mav.addAllObjects(nlist);
			mav.addObject("ar", area);
			mav.addObject("rb", radiobox);
			mav.addObject("cb", checkbox);
			}
		mav.setViewName("/com/comSearch");
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("comWriteForm.do")
	public String comWriteForm(){
		return "/com/comWriteForm";
	}
	@RequestMapping("comWrite.do")
	public String comWrite(ComBoard comBoard){
		cservice.insertComBoard(comBoard);
		return "redirect:comBoardList.do ";
	}
	@RequestMapping("comModifyForm.do")
	public ModelAndView comModifyForm(HttpSession session, int cnum){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> user = new HashMap<>();
		user = (HashMap<String, Object>) session.getAttribute("user");
		ComBoard comboard = new ComBoard();
		comboard = cservice.selectComBoardOne((String)user.get("id"), cnum);
		mav.addObject("comboard", comboard);
		mav.setViewName("/com/comModifyForm");
		return mav;
	}
	@RequestMapping("comModify.do")
	public String comModify(ComBoard comboard){
		cservice.updateComBoard(comboard);
		
		return "redirect:comBoardList.do";
	}
	@RequestMapping("comDelete.do")
	public String comDelete(HttpSession session, int cnum ){
		HashMap<String, Object> user = new HashMap<>();
		user = (HashMap<String, Object>)session.getAttribute("user");
		cservice.deleteComBoard(cnum, (String)user.get("id"));
		return "redirect:comBoardList.do";
	}
	@RequestMapping("deleteInComBoard.do")
	public String deleteInComBoard(int cnum, String nomalId, HttpSession session){
		String id = nomalId;
		int userInfo = (int)session.getAttribute("userInfo");
		cservice.deleteInComBoard(cnum, nomalId);
		int res = cservice.insertComM(cnum, id, userInfo);
		int ress = nservice.insertNomalM(cnum, id, userInfo);
		return "redirect:comView.do?cnum="+cnum;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("attendThis.do")
	public String attendThis(int cnum, String userId, HttpSession session){
		String id = userId;
		int userInfo = (int)session.getAttribute("userInfo");
		NomalUser user = nservice.selectOne(id);
		int re = cservice.insertInComBoard(cnum, user);
		int res = cservice.insertComM(cnum, id, userInfo);
		int ress = nservice.insertNomalM(cnum, id, userInfo);
		return"redirect:comView.do?cnum="+cnum;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//------------------------------------------------------------------------------------------------------------------------------------//
	//시간계산 지우지 마시길
	public List<String >getTime(List<FreeBoard> list){
		List<String>timeList = new ArrayList<>();
		List<String>timeList2 = new ArrayList<>();
		//시간구하기
		Calendar tempcal=Calendar.getInstance();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		for(int i = 0; i<list.size(); i++){
			timeList.add(sf.format(list.get(i).getCreateDay()));
		}
		for(int i = 0; i<timeList.size(); i++){
		String start=timeList.get(i);
		Date startday=sf.parse(start, new ParsePosition(0));
		long startTime=startday.getTime();
		//현재의 시간 설정	
		Calendar cal=Calendar.getInstance();
		Date endDate=cal.getTime();
		long endTime=endDate.getTime();
		long mills=endTime-startTime;
		//분으로 변환
		long min=mills/60000;
		if(min<=1440){
			if(min>60){
				long si = min/60;
				long bun = min%60;
				String time = si+"시간"+bun+"분 전";
				timeList2.add(time);
			}else{
				timeList2.add(String.valueOf(min)+"분 전");
			}
		}else if(min>1440 && min<=2880){
			timeList2.add("어제");
		}else{
			long el = min/1440;
			timeList2.add(el+"일전");
		}
		}
		return timeList2;
	}
}
