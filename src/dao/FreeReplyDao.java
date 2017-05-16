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
>>>>>>> 1cf57158b3e85c49ef3f7ca6196f65878cef9f72
	public List<FreeReplyVo> selectReply(int num);
}
