package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.FreeBoardDao;
import model.FreeBoard;
@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	@Autowired(required = false)
	private FreeBoardDao fdao;
/*	@Autowired
	private NomalDao nDao;*/
	@Override
	public List<FreeBoard> selectLimitDesc() {
		List<FreeBoard> list = fdao.selectLimitDesc();
		return list;
	}
	@Override
	public int writeFreeBoard(FreeBoard board, MultipartFile file) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int modifyFreeBoard(FreeBoard board) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteFeeBoard(int num) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public FreeBoard readFreeBoard(int num) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public HashMap<String, Object> getFreeBoardListPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getLastPage(int numOfFreeBoards) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getOffset(int page) {
		// TODO Auto-generated method stub
		return 0;
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

}
