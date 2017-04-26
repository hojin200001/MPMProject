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
}
