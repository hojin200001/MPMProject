package service;

import java.util.HashMap;
import java.util.List;

import model.ComBoard;
import model.NomalBoard;

public interface ComService {
	public List<NomalBoard> selectNomalBoardDesc();
	
	public HashMap<String, Object> comBoardList(int page);
	
	//네이게이터의 첫번째 번호 얻기
	public int getStartPage(int page);
	
	//네비게이터의 마지막 번호 얻기
	public int getEndPage(int page);
	
	//맨 마지막 페이지 얻기
	public int getLastPage(int numOfBoards);
	
	//현재 페이지에서 보여줄 게시물의 시작지점
	public int getOffset(int page);

	public ComBoard boardView(int cnum);

	
}
