package service;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyService {
	
	public void writeReply(FreeReplyVo freeReplyVo);
	public void updateReply(FreeReplyVo freeReplyVo);
	public void deleteReply(int num);
	public FreeReplyVo readReply(int reNum);
<<<<<<< HEAD

	public List<FreeReplyVo> readReplyList(int num);

	public List<FreeReplyVo> readReplyList();

=======
	public List<FreeReplyVo> readReplyList(int num);
>>>>>>> 1cf57158b3e85c49ef3f7ca6196f65878cef9f72
	
}
