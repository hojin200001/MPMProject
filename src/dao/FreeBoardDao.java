package dao;

import java.util.HashMap;
import java.util.List;

import model.FreeBoard;

public interface FreeBoardDao {
	public int insertFreeBoard(FreeBoard freeboard);
	public int updateFreeBoard(FreeBoard freeBoard);
	public int deleteFreeBoard(String num);
	public FreeBoard selectOneByNum(String num);
	//조회수 증가
	public void updateFreeCount(String num);
	public List<FreeBoard> selecAll();
	//자유게시물 최근날짜 4개 가져오기
	public List<FreeBoard> selectFreePast();
	
	//현재페이지에 해당하는 게시물만 가져오기
	public List<FreeBoard> selectBoardPage(HashMap<String, Object> params);
		
	//검색결과에 해당하는 게시물 가져오기 + 페이징
	public List<FreeBoard> selectSearchByKeyword(HashMap<String, Object> params);
		
	public int getCountSearchByKeyword(HashMap<String, Object> params);
	public List<FreeBoard> selectLimitDesc();
}
