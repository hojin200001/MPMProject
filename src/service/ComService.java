package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import model.ComBoard;
import model.ComM;
import model.ComUser;
import model.InComBoard;
import model.InComBoardRe;
import model.NomalBoard;
import model.NomalUser;

public interface ComService {
	//로그인
	public HashMap<String, Object> getLogin(String id, String pass);
	public List<NomalBoard> selectNomalBoardDesc();
	//comBoard
	public HashMap<String, Object> comBoardList(int page, String id, int boardsPerPage);
	public ComBoard selectComBoardOne(String id, int cnum);
	public int insertComBoard(ComBoard comBoard);
	public int updateComBoard(ComBoard comboard);
	public int deleteComBoard(int cnum, String id);
	//네이게이터의 첫번째 번호 얻기
	public int getStartPage(int page);
	
	//네비게이터의 마지막 번호 얻기
	public int getEndPage(int page);
	
	//맨 마지막 페이지 얻기
	public int getLastPage(int numOfBoards, int boardsPerPage);
	
	//현재 페이지에서 보여줄 게시물의 시작지점
	public int getOffset(int page, int boardsPerPage);

	public ComBoard comView(int cnum);
	
	public File getAttachedFile(String id);
	
	public int insertComUser(ComUser comUser, MultipartFile file);
	//아이디 체크
	public String idCheck(String id);
	public List<InComBoard> selectIncomBoard(int cnum);
	public int deleteInComBoard(int cnum, String nomalId);
	public List<InComBoardRe> inComBoardCount();


	public int comarea(HashMap<String, Object> comarea);

	//inComBoard
	public int InComBoardCount(int cnum);
	public int insertInComBoard(int cnum, NomalUser nuser);

	
	public HashMap<String, Object> getComBoardListByCondition(int page, 
			@RequestParam(required=false) List cb,
			@RequestParam(required=false) String rb,
			@RequestParam(required=false) String ar, 
			@RequestParam(required=false) String keyword);
	
	public ComBoard comVie(int cnum);
	//메세지 알람
	public int insertComM(int cnum, String id, int userInfo);
	public List<Integer> comMcounts(String id);
	public HashMap<String, Object> selectComM(int page, String id);
	public int deleteMesege(int cmnum);
	public int changeComM(HashMap<String, Object> ctu);
}
