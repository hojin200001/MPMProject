package dao;

import java.util.HashMap;
import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyDao {
	
	public void insertFreeReply(FreeReplyVo freeReplyVo);
	public void updateFreeReply(FreeReplyVo freeReplyVo);
<<<<<<< HEAD
<<<<<<< HEAD
	public void deleteFreeReply(int ReNum);
=======

	public void deleteFreeReply(int reNum);

>>>>>>> d2167db8af18cf7e4a2ed13d2f813ce3d4666006
=======
	public void deleteFreeReply(int reNum);
>>>>>>> a95063d6c255ce32daa58715693f3fd4df79f28f
	public List<FreeReplyVo> selectReply(int num);
}
