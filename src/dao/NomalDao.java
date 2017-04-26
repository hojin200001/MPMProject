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
}