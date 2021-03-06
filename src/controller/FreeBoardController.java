package controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import model.FreeBoard;
import service.FreeBoardService;
import service.FreeReplyService;

@Controller
public class FreeBoardController {
	
	@Autowired
	private FreeBoardService freeBoardService;
	
	@Autowired
	private FreeReplyService fReplyService;
	
	@RequestMapping("freeBoardList.do")
	public ModelAndView freeBoardList(		
			@RequestParam(defaultValue="1") int page,
			@RequestParam(required=false) String keyword,
			@RequestParam(defaultValue="0") int type ) throws UnsupportedEncodingException{
		
		//페이지 네비게이터의 첫번째 번호, 마지막 번호, 맨 끝 페이지 번호
		//등의 정보 알아내기
		//서비스에 위의 기능을 구현할 메소드 만들기
		//getBoardListPage 메소드 호출
			
		ModelAndView mav = new ModelAndView();
		
		if(type == 0){
			//전체 게시물에 대해 리스트
			HashMap<String, Object> result = freeBoardService.getFreeBoardListPage(page);
			mav.addAllObjects(result);
			
		}
		if(type == 1 || type == 2 || type == 3 || type == 4){
			//검색을 적용한 한정된 결과 게시글 가져오기
			//검색 결과에 해당하는 게시물 가져오기 기능 구현
			//서비스 : getFreeBoardListByCondition
			HashMap<String, Object> result = freeBoardService.getFreeBoardListByCondition(page, keyword, type);
			
			mav.addObject("keyword", URLEncoder.encode(keyword, "UTF-8"));
			
			mav.addAllObjects(result);
		}
		
		mav.addObject("type", type);
		mav.setViewName("/freeBoard/freeBoardList");
		return mav;
	}
	
	@RequestMapping("freeBoardView.do")
	public ModelAndView freeBoardView(int num){
		//System.out.println(10000);
		//System.out.println(num);
		ModelAndView mav = new ModelAndView();
		
		//게시물 번호에 해당하는 게시물 정보가져오기
		//서비스의 readBoard
		
		mav.addObject(freeBoardService.readFreeBoard(num));
		mav.addObject("freereply",fReplyService.readReplyList(num));
		
		mav.setViewName("/freeBoard/freeBoardView");

		fReplyService.readReplyList(num);

		return mav;
	}
	
	@RequestMapping("freeBoardUpdateForm.do")
	public ModelAndView modifyForm(Model model, int num, HttpSession session){
		
		//DB에서 가져온 게시판 정보 하나 : 데이터
		//modifyForm.jsp 페이지 : view
		//서비스의 getBoard
		ModelAndView mav = new ModelAndView();
		
		mav.addObject(freeBoardService.getFreeBoard(num));
		mav.setViewName("/freeBoard/freeBoardUpdateForm");
		return mav;
		
	}
	
	@RequestMapping("freeBoardUpdate.do")
	public String modify(FreeBoard freeBoard){
		
		//게시물정보를 파라미터로 받아서 DB에 수정작업
		//서비스의 modifyBoard
		freeBoardService.updateFreeBoard(freeBoard);
		return "redirect:freeBoardView.do?num="+freeBoard.getNum();
	}
	
	@RequestMapping("freeBoardWriteForm.do")
	public String writeForm(HttpSession session){
		
		if(session.getAttribute("user")!=null){
			return "/freeBoard/freeBoardWrite";
		}
		else{
			return "redirect:login.do";
		}
	}
	
	@RequestMapping("freeBoardWrite.do")
	public String write(FreeBoard freeBoard,HttpSession session){		
		//게시글 작성하기
		//페이지에서 파라미터 얻어와서 DB에 저장
		
		if(session.getAttribute("userInfo")!=null){
			freeBoardService.writeFreeBoard(freeBoard);
			return "redirect:freeBoardView.do?num="+freeBoard.getNum();			
		}
		else{
			return "re";
		}
		
		
	}
	
	@RequestMapping("deleteCheckForm.do")
	public void freeBoardDeleteCheckForm(int num){
		
	}
	
	@RequestMapping("updateCheckForm.do")
	public String freeBoardupdateCheckForm(FreeBoard freeBoard,HttpSession session){

		
		return null;
	}
	
	
	@RequestMapping("freeBoardDelete.do")
	public String freeBoardDelete(int num){
		
		freeBoardService.deleteFreeBoard(num);
		return "redirect:freeBoardList.do";
	}
	
	
	
//	@RequestMapping("download.do")
//	public View download(int num){
//		
//		View view = new DownloadView(bService.getAttachedFile(num));
//		
//		return view;
//	}
}
