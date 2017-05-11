package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.FreeReplyVo;
import service.FreeReplyService;

@Controller
public class FreeReplyController {
	
	@Autowired
	private FreeReplyService freeReplyService;
	
	
	@RequestMapping("replyWrite.do")
	public String writeReply(FreeReplyVo freeReplyVo){
		
		freeReplyService.writeReply(freeReplyVo);
		
		return "redirect:freeBoardView.do?num="+freeReplyVo.getNum();
	}
	
	@RequestMapping("replyUpdate.do")
	public void updateReply(FreeReplyVo freeReplyVo){
		freeReplyService.updateReply(freeReplyVo);
	}
	
	@RequestMapping("replyDelete.do")
	public void deleteReply(int num){
		
	}
	
	@RequestMapping("replyList")
<<<<<<< HEAD
	public List<FreeReplyVo> readReplyList(){
		
		ModelAndView mav = new ModelAndView();
		List<FreeReplyVo> freereply = freeReplyService.readReplyList();
=======
	public List<FreeReplyVo> readReplyList(int num){
		
		ModelAndView mav = new ModelAndView();
		List<FreeReplyVo> freereply = freeReplyService.readReplyList(num);
>>>>>>> cdf2d34813135f8ea4b5d997b7e7bb181173b1e4
		
		return freereply;
		
		
	}
	
}

