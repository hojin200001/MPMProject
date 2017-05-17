package service;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyService {
	
	public void writeReply(FreeReplyVo freeReplyVo);
	public void updateReply(FreeReplyVo freeReplyVo);
	public void deleteReply(int reNum);
	public FreeReplyVo readReply(int reNum);
	public List<FreeReplyVo> readReplyList(int num);

}
