package service;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyService {
	
	public void writeReply(FreeReplyVo freeReplyVo);
	public void updateReply(FreeReplyVo freeReplyVo);
	public void deleteReply(int num);
	public FreeReplyVo readReply(int reNum);
<<<<<<< HEAD
	public List<FreeReplyVo> readReplyList();
=======
	public List<FreeReplyVo> readReplyList(int num);
>>>>>>> cdf2d34813135f8ea4b5d997b7e7bb181173b1e4
	
}
