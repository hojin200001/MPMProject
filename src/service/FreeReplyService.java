package service;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyService {
	
	public void writeReply(FreeReplyVo freeReply);
	public void updateReply(FreeReplyVo freeReply);
	public void deleteReply(int num);
	public FreeReplyVo readReply(int reNum);
	public List<FreeReplyVo> readReplyList();
	
}
