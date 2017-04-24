package dao;

import java.util.HashMap;

import model.NomalUser;

public interface NomalDao {
	public NomalUser selectOne(HashMap<String, Object> params);
}
