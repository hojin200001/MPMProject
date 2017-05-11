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
	public String deleteReply(int reNum , int num){
		
		freeReplyService.deleteReply(reNum);
		
		return "redirect:freeBoardView.do?num="+num;
	}
	
	@RequestMapping("replyList")
	public List<FreeReplyVo> readReplyList(int num){
		
		ModelAndView mav = new ModelAndView();
		List<FreeReplyVo> freereply = freeReplyService.readReplyList(num);
		
		return freereply;
		
		
	}
	
}

