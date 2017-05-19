package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String updateReply(FreeReplyVo freeReplyVo, int num){
		
		freeReplyService.updateReply(freeReplyVo);
		
		return "redirect:freeBoardView.do?num="+num;
	}
	
	@RequestMapping("replyDelete.do")
	public String deleteReply(int reNum , int num){

		freeReplyService.deleteReply(reNum);
		return "redirect:freeBoardView.do?num="+num;
	}
	@RequestMapping("replyList.do")
	public List<FreeReplyVo> readReplyList(int num){
		
		ModelAndView mav = new ModelAndView();
		List<FreeReplyVo> freereply = freeReplyService.readReplyList(num);

		return freereply;
		
		
	}
	
}

