package dao;

import java.util.HashMap;
import java.util.List;

import model.NomalBoard;
import model.NomalUser;

public interface NomalDao {
	public NomalUser selectOne(HashMap<String, Object> params);
	
	public List<NomalBoard> selectLimitDesc();
	
	public int areaJobNum(String area);
	
	public NomalBoard nomalView(HashMap<String, Integer> nnum);
	
	public void nomalUpdate(NomalBoard nb);

	public int getCount();

	public List<NomalBoard> selectBoardPage(HashMap<String, Object> params);
	// 회원가입
	public int insertNomalUser(NomalUser nomaluser);
	//아이디 체크
	public NomalUser selectIdCheck(HashMap<String, Object> params);
}