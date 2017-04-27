package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NomalDao;
import model.NomalBoard;
import model.NomalUser;
@Service
public class NomalServiceImpl implements NomalService{
	@Autowired(required = false)
	private NomalDao nDao;

	public NomalUser selectOne(String id) {
		System.out.println();
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

	@Override
	public List<NomalBoard> selectLimitDesc() {
		List<NomalBoard> list = nDao.selectLimitDesc();
		return list;
	}

	@Override
	public int areaJobNum(String area) {
		// TODO Auto-generated method stub
		return nDao.areaJobNum(area);
	}

	@Override
	public NomalBoard boardView(int nnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("nnum", nnum);
		NomalBoard nb = nDao.nomalView(n);
		System.out.println("서비스 끝");
		if(nb !=null){
			nb.setNcount(nb.getNcount()+1);
			nDao.nomalUpdate(nb);
		}
		System.out.println("리턴");
		
		return nb;
	}
}
