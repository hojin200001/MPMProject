package dao;

import java.util.HashMap;
import java.util.List;

import model.ComBoard;
import model.ComM;
import model.NomalBoard;
import model.NomalM;
import model.NomalUser;

public interface NomalDao {
	public NomalUser selectOne(HashMap<String, Object> params);
	
	public List<ComBoard> selectLimitDesc();
	
	public int areaJobNum(HashMap<String, Object> iw);
	
	public NomalBoard nomalView(HashMap<String, Integer> nnum);
	
	public void nomalUpdate(NomalBoard nb);

	public int getCount();
	public int getCountBoardList(HashMap<String, Object> params);

	public List<NomalBoard> selectBoardPage(HashMap<String, Object> params);
	// 회원가입
	public int insertNomalUser(NomalUser nomaluser);
	//아이디 체크
	public NomalUser selectIdCheck(HashMap<String, Object> params);
	
	public List<NomalBoard> selectSearchByKeyword(HashMap<String, Object> params);
	
	public int getCountSearchByKeyword(HashMap<String, Object> params);
	
	public int insertNomalBoard(NomalBoard nomal);
	
	public String getPhoneNum(NomalBoard nb);
	
	public int listComNum(HashMap<String, Object> params);
	public int listNomalNum(HashMap<String, Object> params);
	
	public int userarea(HashMap<String, Object> params);
	public int comarea(HashMap<String, Object> params);

	
	public void nomalBoardModify(NomalBoard nomal);

	//nomalM(메세지 알람)
	public int insertNomalM(NomalM nomalm);
	public int deleteNomalM(HashMap<String, Object> params);
	public List<NomalM> selectNomalM(HashMap<String, Object> params);
	public NomalM selectNomalMOne(HashMap<String, Object> params);
	public int nomalMcountNew(HashMap<String, Object> params);
	public int nomalMcountAll(HashMap<String, Object> params);
	public int changeNomalM(HashMap<String, Object> params);
	public int getCountM(HashMap<String, Object> params);

	public int getCountBoardListCom(HashMap<String, Object> id);
	
	
	//---------------좌표로 거리 구하는 함수
	public String amguna();
	public String amguna2();
}