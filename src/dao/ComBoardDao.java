package dao;

import java.util.HashMap;
import java.util.List;

import model.ComBoard;
import model.ComDay;
import model.ComUser;
import model.NomalBoard;

public interface ComBoardDao {
	//comUser
	public ComUser selectOne(HashMap<String, Object> params);
	//comBoard
	public List<NomalBoard> selectNomalBoardDesc();
	public HashMap<String, Object> comBoardList();
	public int getCount(HashMap<String, Object> params);
	public List<ComBoard> selectBoardPage(HashMap<String, Object> params);
	public ComBoard comView(HashMap<String, Integer> n);
	public void comCountUpdate(HashMap<String, Integer> n);
	public int insertComBoard(ComBoard comboard);
	public int selectCnum(HashMap<String, Object> params);
	//incomBoard
	//comday
	public int insertComDay(ComDay comday);
	public ComDay selectComDayOne(HashMap<String, Integer> n); 
}
