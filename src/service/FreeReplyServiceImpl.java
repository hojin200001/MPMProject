package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FreeReplyDao;
import model.FreeReplyVo;


@Service
public class FreeReplyServiceImpl implements FreeReplyService{
	
	@Autowired
	private FreeReplyDao fReplyDao;
	
	@Override
	public void writeReply(FreeReplyVo freeReplyVo) {
		// TODO Auto-generated method stub
		
		fReplyDao.insertFreeReply(freeReplyVo);
	}

	@Override
	public void updateReply(FreeReplyVo freeReplyVo) {
		// TODO Auto-generated method stub
		
		fReplyDao.updateFreeReply(freeReplyVo);
	}

	@Override
	public void deleteReply(int reNum) {
		// TODO Auto-generated method stub
		
		//HashMap<String, Object> reNum = new HashMap<>();
		//reNum.put("reNum", ReNum);
		
		fReplyDao.deleteFreeReply(reNum);
	}

	@Override
	public FreeReplyVo readReply(int reNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
	public List<FreeReplyVo> readReplyList(int num) {
		// TODO Auto-generated method stub
		return fReplyDao.selectReply(num);

=======
	public List<FreeReplyVo> readReplyList() {
		// TODO Auto-generated method stub
		return fReplyDao.selectAll();
	}
>>>>>>> 4ef854f14d0ee49c84eae739dfb83c94bf34437d
	public List<FreeReplyVo> readReplyList(int num) {
		// TODO Auto-generated method stub
		
		return fReplyDao.selectReply(num);
<<<<<<< HEAD
=======
>>>>>>> projecting
>>>>>>> 4ef854f14d0ee49c84eae739dfb83c94bf34437d
=======
	public List<FreeReplyVo> readReplyList(int num) {
		// TODO Auto-generated method stub
		return fReplyDao.selectReply(num);
>>>>>>> 376048410347aa711fb11dd7c8e25473339e6f4a
	}

}
