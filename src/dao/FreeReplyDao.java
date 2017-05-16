package dao;

import java.util.HashMap;
import java.util.List;

import model.FreeReplyVo;

public interface FreeReplyDao {
	
	public void insertFreeReply(FreeReplyVo freeReplyVo);
	public void updateFreeReply(FreeReplyVo freeReplyVo);
<<<<<<< HEAD
	public void deleteFreeReply(int reNum);
=======
	public void deleteFreeReply(int ReNum);
<<<<<<< HEAD
<<<<<<< HEAD
=======
	public List<FreeReplyVo> selectAll();
>>>>>>> projecting
>>>>>>> 4ef854f14d0ee49c84eae739dfb83c94bf34437d
=======
>>>>>>> 376048410347aa711fb11dd7c8e25473339e6f4a
	public List<FreeReplyVo> selectReply(int num);
}
