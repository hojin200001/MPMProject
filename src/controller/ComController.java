package controller;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
		mav.addObject("user" , session.getAttribute("user"));
		mav.addObject(cservice.boardView(cnum));
		mav.setViewName("com/comView");
		return mav;
	}
	
	@RequestMapping("comBoardList.do")
	public ModelAndView comBoardList(
			@RequestParam(defaultValue="1") int page,
			@RequestParam(value="checkbox", required=false) List checkbox,
			@RequestParam(value="radiobox", required=false) String radiobox,
			@RequestParam(value="area", required=false) String area
	){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> cb = new HashMap<>();
		cb = cservice.comBoardList(page);
		mav.setViewName("/com/comBoardList");
		mav.addAllObjects(cb);
		return mav;
		
	}
	@RequestMapping("comSearch.do")
	public String comSearch(){
		return "/com/comSearch";
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
