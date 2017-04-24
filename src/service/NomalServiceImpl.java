package service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NomalDao;
import model.NomalUser;
@Service
public class NomalServiceImpl implements NomalService{
	@Autowired(required = false)
	private NomalDao nDao;

	public NomalUser selectOne(String id) {
		
		return null;
	}
	
	public HashMap<String, Object> getLogin(String id, String pass){
		HashMap<String, Object> map = new HashMap<>();
		HashMap<String, Object> map2 = new HashMap<>();
		map.put("id", id);
		NomalUser user = nDao.selectOne(map);
		if(user != null){
			if(user.getNomalPass().equals(pass)){
				map2.put("name", user.getName());
				map2.put("id",user.getNomalId());
				return map2;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
}
