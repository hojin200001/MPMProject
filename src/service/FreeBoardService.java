package service;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;


import model.FreeBoard;

public interface FreeBoardService {

	public int writeFreeBoard(FreeBoard freeBoard);
	public int updateFreeBoard(FreeBoard freeBoard);
	public int deleteFreeBoard(int num);
	//게시물 정보 하나 가져오기+조회수up
	public FreeBoard readFreeBoard(int num);
	
	//게시물 페이지 정보 구하기
	//현재 페이지의 게시물 리스트
	
	public HashMap<String, Object> getFreeBoardListPage(int page);
	
	//네비게이터의 첫번째 번호 얻기
	public int getStartPage(int page);

	//네비게이터의 마지막 번호 얻기
	public int getEndPage(int page);
	
	//맨 마지막 페이지 얻기
	public int getLastPage(int numOfFreeBoards);
	
	//현재 페이지에서 보여줄 게시물의 시작 지점
	public int getOffset(int page);
	
	//게시물 정보 하나 가져오기
	public FreeBoard getFreeBoard(int num);
	
	//첨부파일을 가져다 주는 기능
	public File getAttachedFile(int num);
	
	//검색한결과의 현재 페이지 게시물 정보 가져오기
	public HashMap<String, Object> getFreeBoardListByCondition(int page, String keyword, int type);	
	
	public List<FreeBoard> selectLimitDesc();
 
	public String getPass(String id);
}
