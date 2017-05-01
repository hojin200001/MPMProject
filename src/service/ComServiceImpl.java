package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ComBoardDao;
import model.ComBoard;
import model.ComUser;
import model.NomalBoard;
import model.NomalUser;
@Service
public class ComServiceImpl implements ComService{
	@Autowired(required = false)
	private ComBoardDao cdao;
	@Override
	public List<NomalBoard> selectNomalBoardDesc() {
		List<NomalBoard> list = cdao.selectNomalBoardDesc(); 
		return list;
	}
	@Override
	public HashMap<String, Object> comBoardList(int page, String id, int boardsPerPage) {
		HashMap<String, Object> result = new HashMap<>();
		HashMap<String, Object> resultid = new HashMap<>();
		resultid.put("id", id);
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(cdao.getCount(resultid), boardsPerPage));
		result.put("totalPage", cdao.getCount(resultid));
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("offset", getOffset(page, boardsPerPage));
		params.put("boardsPerPage", boardsPerPage);
		params.put("id", id);
		result.put("comBoard", cdao.selectBoardPage(params));
		
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
	public int getLastPage(int numOfBoards, int boardsPerPage) {
		// TODO Auto-generated method stub
		return (numOfBoards-1)/boardsPerPage + 1;
	}
	@Override
	public int getOffset(int page, int boardsPerPage) {
		// TODO Auto-generated method stub
		return (page - 1)*boardsPerPage;
	}
	@Override
	public ComBoard boardView(int cnum) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> n = new HashMap<>();
		n.put("cnum", cnum);
		ComBoard cb = cdao.comView(n);
		if(cb !=null){
			cb.setCcount(cb.getCcount()+1);
			cdao.comUpdate(cb);
		}
		return cb;
	}
	@Override
	public HashMap<String, Object> getLogin(String id, String pass) {
		HashMap<String, Object> map = new HashMap<>();
		HashMap<String, Object> map2 = new HashMap<>();
		map.put("id", id);
		ComUser user = cdao.selectOne(map);
		if(user != null){
			if(user.getComPass().equals(pass)){
				map2.put("name", user.getComName());
				map2.put("id",user.getComId());
				return map2;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
}
