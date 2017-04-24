package service;

import java.util.HashMap;

import model.NomalUser;

public interface NomalService {
	public NomalUser selectOne(String id);
	public HashMap<String, Object> getLogin(String id, String pass);
}
