package dao;

import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyDao {
	
	public void insertFreeReply(FreeReplyVo freeReplyVo);
	public void updateFreeReply(FreeReplyVo freeReplyVo);
	public void deleteFreeReply(int ReNum);
<<<<<<< HEAD
	public List<FreeReplyVo> selectAll();
=======
	public List<FreeReplyVo> selectReply(int num);
>>>>>>> cdf2d34813135f8ea4b5d997b7e7bb181173b1e4
}
