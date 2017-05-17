package dao;

import java.util.HashMap;
import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyDao {
	
	public void insertFreeReply(FreeReplyVo freeReplyVo);
	public void updateFreeReply(FreeReplyVo freeReplyVo);
<<<<<<< HEAD
	public void deleteFreeReply(int ReNum);
=======

	public void deleteFreeReply(int reNum);

>>>>>>> d2167db8af18cf7e4a2ed13d2f813ce3d4666006
	public List<FreeReplyVo> selectReply(int num);
}
