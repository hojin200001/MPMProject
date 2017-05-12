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
<<<<<<< HEAD

	public List<FreeReplyVo> readReplyList(int num);

=======
	public List<FreeReplyVo> readReplyList();
	public List<FreeReplyVo> readReplyList(int num);
>>>>>>> projecting
>>>>>>> 4ef854f14d0ee49c84eae739dfb83c94bf34437d
	
}
