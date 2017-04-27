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
		if(nb !=null){
			nb.setNcount(nb.getNcount()+1);
			nDao.nomalUpdate(nb);
		}
		
		return nb;
	}

	@Override
	public HashMap<String, Object> nomalBoardList(int page) {
		HashMap<String, Object> result = new HashMap<>();
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(nDao.getCount()));
		result.put("totalPage", nDao.getCount());
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("offset", getOffset(page));
		params.put("boardsPerPage", 10);
		result.put("nomalBoard", nDao.selectBoardPage(params));
		
		return result;
	}

	@Override
	public int getStartPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page-1)%10);
	}
	@Override
	public int getEndPage(int page) {
		// TODO Auto-generated method stub
		return page - ((page-1)%10) + (10-1);
	}
	@Override
	public int getLastPage(int numOfBoards) {
		// TODO Auto-generated method stub
		return (numOfBoards-1)/10 + 1;
	}
	@Override
	public int getOffset(int page) {
		// TODO Auto-generated method stub
		return (page - 1)*10;
	}
}
