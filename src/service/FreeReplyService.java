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

<<<<<<< HEAD
=======

>>>>>>> d2167db8af18cf7e4a2ed13d2f813ce3d4666006
=======
	public List<FreeReplyVo> readReplyList(int num);

>>>>>>> a95063d6c255ce32daa58715693f3fd4df79f28f
}
