package service;

import java.util.HashMap;
import java.util.List;

import model.NomalBoard;
import model.NomalUser;

public interface NomalService {
	public NomalUser selectOne(String id);
	public HashMap<String, Object> getLogin(String id, String pass);
	public List<NomalBoard> selectLimitDesc();
	public int areaJobNum(String area);
	public NomalBoard boardView(int nnum);
	public HashMap<String, Object> nomalBoardList(int page);
	//네이게이터의 첫번째 번호 얻기
	public int getStartPage(int page);
	
	//네비게이터의 마지막 번호 얻기
	public int getEndPage(int page);
	
	//맨 마지막 페이지 얻기
	public int getLastPage(int numOfBoards);
	
	//현재 페이지에서 보여줄 게시물의 시작지점
	public int getOffset(int page);
	//일반 회원가입
	public int insertNomalUser(NomalUser nomaluser);
	//아이디 체크
	public String idCheck(String id);
}
