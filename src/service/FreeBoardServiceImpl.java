package service;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.fabric.xmlrpc.base.Data;

import dao.FreeBoardDao;

import model.FreeBoard;
@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	@Autowired(required = false)
	private FreeBoardDao fDao;
/*	@Autowired
	private NomalDao nDao;*/
	@Override
	public List<FreeBoard> selectLimitDesc() {
		List<FreeBoard> list = fDao.selectLimitDesc();
		return list;
	}
	@Override
	public int writeFreeBoard(FreeBoard freeBoard) {
		// TODO Auto-generated method stub
		
		return fDao.insertFreeBoard(freeBoard);
	}
	@Override
	public int updateFreeBoard(FreeBoard freeBoard) {
		// TODO Auto-generated method stub
		
		return fDao.updateFreeBoard(freeBoard);
	}
	@Override
	public int deleteFreeBoard(int num) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public FreeBoard readFreeBoard(int num) {
		// TODO Auto-generated method stub
		//게시물 번호를 이용해서 DB에서게시물 조회
		//게시물이 있으면 조회수 1 올리기
		//게시물하나 가져오기  : DAO의 selectOne이용
				
		FreeBoard b = fDao.selectOneByNum(num);
				
		if(b != null){
			b.setFreeCount(b.getFreeCount() + 1);
			fDao.updateFreeBoard(b);
		}
				
		return b;
	}
	
	@Override
	public HashMap<String, Object> getFreeBoardListPage(int page) {
		// TODO Auto-generated method stub
		HashMap<String, Object> result = new HashMap<>();
		
		result.put("current",page);
		result.put("start", getStartPage(page));
		result.put("end",getEndPage(page));
		result.put("last", getLastPage(fDao.getCount()));
		result.put("totalPage", fDao.getCount());
		
		HashMap<String, Object> params = new HashMap<>();
		
		params.put("offset", getOffset(page));
		params.put("freeBoardsPerPage", 10);
		
		result.put("freeBoardList",fDao.selectFreeBoardPage(params));
				
		return result;
	}
	
	
	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		//현재페이지 - (현재페이지 - 1) % 네비게이터 블록 크기
		return page-((page-1)%10);
	}

	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		//네비게이터의 첫번째 번호 + (네비게이터 블록 크기 - 1)
		return page - ((page-1)%10) + (10 - 1);
	}

	@Override
	public int getLastPage(int numOfBoards) {
		// TODO Auto-generated method stub
		
		//총 게시물수 가져오기
		//한 페이지당 10개의 게시물
		
		return (numOfBoards - 1)/10 + 1;
	}

	@Override
	public int getOffset(int page) {
		// TODO Auto-generated method stub
		//각 페이지마다 불러올 글의 시작번호(5페이지면 40개 건너뛰고 받는 역할)
		return (page-1)* 10;
	}
	
	
	@Override
	public FreeBoard getFreeBoard(int num) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public File getAttachedFile(int num) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public HashMap<String, Object> getFreeBoardListByCondition(int page, String keyword, int type) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public String getPass(String id) {
		// TODO Auto-generated method stub
		return fDao.getNomalID(id);
	}

}
