package dao;

import java.util.HashMap;
import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyDao {
	
	public void insertFreeReply(FreeReplyVo freeReplyVo);
	public void updateFreeReply(FreeReplyVo freeReplyVo);

	public void deleteFreeReply(int reNum);

	public List<FreeReplyVo> selectReply(int num);
}
