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
>>>>>>> e857cc08d3510f863b3f7fa504f617f8b5999176
	public List<FreeReplyVo> selectReply(int num);
}
