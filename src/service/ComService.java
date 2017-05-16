package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import model.ComBoard;
import model.ComUser;
import model.InComBoard;
import model.InComBoardRe;
import model.NomalBoard;

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
	public int InComBoardCount(int cnum);
	public List<InComBoardRe> inComBoardCount();
	public int comarea(HashMap<String, Object> comarea);
}
