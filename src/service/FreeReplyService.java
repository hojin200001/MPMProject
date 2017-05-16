package service;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyService {
	
	public void writeReply(FreeReplyVo freeReplyVo);
	public void updateReply(FreeReplyVo freeReplyVo);
	public void deleteReply(int reNum);
	public FreeReplyVo readReply(int reNum);
<<<<<<< HEAD

	public List<FreeReplyVo> readReplyList(int num);


	
=======
	public List<FreeReplyVo> readReplyList(int num);


>>>>>>> e857cc08d3510f863b3f7fa504f617f8b5999176
}
