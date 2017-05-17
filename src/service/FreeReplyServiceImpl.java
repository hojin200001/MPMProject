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
	public List<FreeReplyVo> readReplyList(int num) {
=======
	public List<FreeReplyVo> readReplyList(int num){
>>>>>>> a95063d6c255ce32daa58715693f3fd4df79f28f
		// TODO Auto-generated method stub
		return fReplyDao.selectReply(num);
	}

}
