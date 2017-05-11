package service;

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
		System.out.println(freeReplyVo);
		fReplyDao.insertFreeReply(freeReplyVo);
	}

	@Override
	public void updateReply(FreeReplyVo freeReplyVo) {
		// TODO Auto-generated method stub
		
		fReplyDao.updateFreeReply(freeReplyVo);
	}

	@Override
	public void deleteReply(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FreeReplyVo readReply(int reNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FreeReplyVo> readReplyList() {
		// TODO Auto-generated method stub
		return fReplyDao.selectAll();
	}
	
}
