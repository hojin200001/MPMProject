package service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

import model.ComBoard;
import model.NomalBoard;
import model.NomalUser;

public interface NomalService {
	public NomalUser selectOne(String id);
	public HashMap<String, Object> getLogin(String id, String pass);
	public List<ComBoard> selectLimitDesc();
	public HashMap<String, Object> areaJobNum(String json);
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
	public int insertNomalBoard(NomalBoard nomalBoard);
	public String idCheck(String id);
	
	
	
	public HashMap<String, Object> getNomalBoardListByCondition(int page, 
			@RequestParam(required=false) List cb,
			@RequestParam(required=false) String rb,
			@RequestParam(required=false) String ar);
	
	public int userarea(HashMap<String, Object> userarea);

	public int nomalBoardModify(NomalBoard nomalBoard);
	
	public int insertNomalM(int cnum, String id, int userInfo);
	public List<Integer> nomalMcounts(String id);
	public HashMap<String, Object> selectNomalM(int page, String id);
	public int deleteMesege(int nmnum);
	public int changeNomalM(HashMap<String, Object> user);
}
